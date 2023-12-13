using AnimalClinic.Models;
using Microsoft.VisualBasic.ApplicationServices;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Repositories
{
    public class AnimalRepository : RepositoryBase, IAnimalRepository
    {
        public void Add(Animal animal)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"INSERT INTO Animals 
                                    (Name, Gender, DateOfBirth, Color, Breed, Specie, Picture, UserId) 
                                    VALUES 
                                    (@Name, @Gender, @DateOfBirth, @Color, @Breed, @Specie, @Picture, @UserId)";
                command.Parameters.AddWithValue("@Name", animal.Name);
                command.Parameters.AddWithValue("@Gender", animal.Gender);
                command.Parameters.AddWithValue("@DateOfBirth", animal.DateOfBirth );
                command.Parameters.AddWithValue("@Color", animal.Color ); 
                command.Parameters.AddWithValue("@Breed", animal.Breed ); 
                command.Parameters.AddWithValue("@Specie", animal.Specie);
                if (animal.Picture != null)
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = animal.Picture;
                    command.Parameters.Add(pictureParam);
                }
                else
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = DBNull.Value;
                    command.Parameters.Add(pictureParam);
                }
                command.Parameters.AddWithValue("@UserId", animal.UserId); 
                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Console.Write(ex.ToString());
                }
            }
        }

        public void Edit(Animal animal)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"UPDATE Animals SET 
                                Name = @Name, 
                                Gender = @Gender, 
                                DateOfBirth = @DateOfBirth, 
                                Color = @Color, 
                                Breed = @Breed, 
                                Specie = @Specie, 
                                Picture = @Picture, 
                                UserId = @UserId
                                WHERE Id = @Id";
                command.Parameters.AddWithValue("@Name", animal.Name);
                command.Parameters.AddWithValue("@Gender", animal.Gender);
                command.Parameters.AddWithValue("@DateOfBirth", animal.DateOfBirth); // Handling null
                command.Parameters.AddWithValue("@Color", animal.Color); // Handling null
                command.Parameters.AddWithValue("@Breed", animal.Breed); // Handling null
                command.Parameters.AddWithValue("@Specie", animal.Specie); // Handling null
                if (animal.Picture != null)
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = animal.Picture;
                    command.Parameters.Add(pictureParam);
                }
                else
                {
                    var pictureParam = new SqlParameter("@Picture", SqlDbType.VarBinary, -1);
                    pictureParam.Value = DBNull.Value;
                    command.Parameters.Add(pictureParam);
                }
                command.Parameters.AddWithValue("@UserId", animal.UserId); // Handling null
                command.Parameters.AddWithValue("@Id", animal.Id); // Unique identifier for the animal record

                command.ExecuteNonQuery();
            }
        }

        public Animal GetById(int id)
        {
            Animal animal = null;
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Animals Where Id = @id"))
            {
                connection.Open();
                command.Connection = connection;
                command.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                using (var reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        byte[] pictureBytes = new byte[0];
                        int columnIndex = reader.GetOrdinal("Picture");
                        if (!reader.IsDBNull(columnIndex)) 
                        {
                            long blobLength = reader.GetBytes(columnIndex, 0, null, 0, 0);
                            pictureBytes = new byte[blobLength];

                            reader.GetBytes(columnIndex, 0, pictureBytes, 0, (int)blobLength);
                        }
                        else
                        {
                            pictureBytes = null;
                        }
                        animal = new Animal()
                        {
                            Id = (int)reader["Id"],
                            Name = reader["Name"].ToString(),
                            Gender = reader["Gender"].ToString(),
                            DateOfBirth = (DateTime)reader["DateOfBirth"],
                            Color = reader["Color"].ToString(),
                            Breed = reader["Breed"].ToString(),
                            Specie = reader["Specie"].ToString(),
                            Picture = pictureBytes,
                            UserId = (int)reader["UserId"]
                        };
                    }
                    
                }
            }
            return animal;
        }

        public IEnumerable<Animal> GetByUserAll(int UserId)
        {
            var animals = new List<Animal>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Animals Where UserId = @UserId", connection))
            {
                command.Parameters.AddWithValue("@UserId", UserId);
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
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

                        var animal = new Animal()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Gender = reader.GetString(reader.GetOrdinal("Gender")),
                            DateOfBirth = reader.GetDateTime(reader.GetOrdinal("DateOfBirth")),
                            Color = reader.GetString(reader.GetOrdinal("Color")),
                            Breed = reader.GetString(reader.GetOrdinal("Breed")),
                            Specie = reader.GetString(reader.GetOrdinal("Specie")),
                            Picture = pictureBytes
                        };
                        animals.Add(animal);
                    }
                }
            }
            return animals;

        }

        public Animal GetByUserId(int UserId)
        {
            throw new NotImplementedException();
        }

        public void Remove(int id)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "DELETE FROM Animals WHERE Id = @Id";
                command.Parameters.AddWithValue("@Id", id);

                command.ExecuteNonQuery();
            }
        }
    }
}
