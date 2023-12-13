using AnimalClinic.Models;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Security;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Repositories
{
    public class UserRepository:RepositoryBase, IUserRepository
    {

        public void Add(UserModel userModel)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "INSERT INTO Users (Password, Name, Surname, Email, Picture) VALUES (@Password, @Name, @Sureame, @Email, @Picture)";
                string passwordHash = ComputeSha256Hash(ConvertToUnsecureString(userModel.Password));
                command.Parameters.AddWithValue("@Password", passwordHash);
                command.Parameters.AddWithValue("@Name", userModel.Name);
                command.Parameters.AddWithValue("@Sureame", userModel.SureName);
                command.Parameters.AddWithValue("@Email", userModel.Email);
                if (userModel.Picture != null)
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = userModel.Picture;
                    command.Parameters.Add(pictureParam);
                }
                else
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = DBNull.Value;
                    command.Parameters.Add(pictureParam);
                }
                try
                {
                    command.ExecuteNonQuery();
                }
                catch(Exception ex)
                {
                    Console.Write(ex.ToString());
                }
            }
        }
        private string ComputeSha256Hash(string rawData)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
        private string ConvertToUnsecureString(SecureString securePassword)
        {
            if (securePassword == null)
                throw new ArgumentNullException(nameof(securePassword));

            IntPtr unmanagedString = IntPtr.Zero;
            try
            {
                unmanagedString = Marshal.SecureStringToGlobalAllocUnicode(securePassword);
                return Marshal.PtrToStringUni(unmanagedString);
            }
            finally
            {
                Marshal.ZeroFreeGlobalAllocUnicode(unmanagedString);
            }
        }
        public bool AuthenticateUser(NetworkCredential credential)
        {
            bool validUser;
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "select *from [Users] where [email]=@email and [password]=@password";
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = credential.UserName;
                command.Parameters.Add("@password", SqlDbType.NVarChar).Value = ComputeSha256Hash(credential.Password);
                validUser = command.ExecuteScalar() == null ? false : true;
            }
            return validUser;
        }
        private SecureString ConvertToSecureString(string password)
        {
            if (password == null)
                throw new ArgumentNullException(nameof(password));

            var securePassword = new SecureString();
            foreach (char c in password)
            {
                securePassword.AppendChar(c);
            }
            securePassword.MakeReadOnly();
            return securePassword;
        }
        public void Edit(UserModel userModel)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "UPDATE Users SET Name=@Name, surname=@surname, Email=@Email, Picture=@Picture WHERE Id=@Id";
                command.Parameters.AddWithValue("@Id", userModel.Id);
                if (userModel.Picture != null)
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = userModel.Picture;
                    command.Parameters.Add(pictureParam);
                }
                else
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = DBNull.Value;
                    command.Parameters.Add(pictureParam);
                }
                //  command.Parameters.AddWithValue("@Role", userModel.Role);
                command.Parameters.AddWithValue("@Name", userModel.Name);
                command.Parameters.AddWithValue("@surname", userModel.SureName);
                command.Parameters.AddWithValue("@Email", userModel.Email);

                command.ExecuteNonQuery();
            }
        }

        public IEnumerable<UserModel> GetByAll()
        {
            var users = new List<UserModel>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Users", connection))
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var user = new UserModel()
                        {
                            Id = reader["Id"].ToString(),

                           // Role = reader["Role"].ToString(),
                            Name = reader["Name"].ToString(),
                            SureName = reader["LastName"].ToString(),
                            Email = reader["Email"].ToString(),
                        };
                        users.Add(user);
                    }
                }
            }
            return users;
        }

        public UserModel GetById(int id)
        {
            UserModel user = null;
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "SELECT * FROM Users WHERE Id=@Id";
                command.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                using (var reader = command.ExecuteReader())
                {
                    
                    if (reader.Read())
                    {
                        byte[] pictureBytes = new byte[0];
                        int columnIndex = reader.GetOrdinal("Picture");
                        if (!reader.IsDBNull(columnIndex)) // Upewnij się, że kolumna nie jest pusta
                        {
                            long blobLength = reader.GetBytes(columnIndex, 0, null, 0, 0);
                            pictureBytes = new byte[blobLength];

                            reader.GetBytes(columnIndex, 0, pictureBytes, 0, (int)blobLength);
                        }
                        else
                        {
                            pictureBytes = null;
                        }
                        user = new UserModel()
                        {

                            Id = reader["Id"].ToString(),
                            // Nie zwracaj hasła
                           // Role = reader["Role"].ToString(),
                            Name = reader["Name"].ToString(),
                            SureName = reader["surname"].ToString(),
                            Email = reader["Email"].ToString(),
                            Picture = pictureBytes
                        };
                    }
                }
            }
            return user;
        }

        public UserModel GetByUsername(string username)
        {
            UserModel user = null;
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "select * from Users where email=@email";
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = username;
                using (var reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        byte[] pictureBytes = new byte[0];
                        int columnIndex = reader.GetOrdinal("Picture");
                        if (!reader.IsDBNull(columnIndex)) // Upewnij się, że kolumna nie jest pusta
                        {
                            long blobLength = reader.GetBytes(columnIndex, 0, null, 0, 0);
                            pictureBytes = new byte[blobLength];

                            reader.GetBytes(columnIndex, 0, pictureBytes, 0, (int)blobLength);
                        }
                        else
                        {
                            pictureBytes = null;
                        }

                        user = new UserModel()
                        {
                            Id = reader[0].ToString(),
                            Name = reader[1].ToString(),
                            Email = reader[2].ToString(),
                            Password = null,
                            SureName = reader[4].ToString(),
                            Picture = pictureBytes
                            
                        };
                    }
                }
            }
            return user;
        }

        public void Remove(int id)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "DELETE FROM Users WHERE Id=@Id";
                command.Parameters.AddWithValue("@Id", id);
                command.ExecuteNonQuery();
            }
        }
    }
}
