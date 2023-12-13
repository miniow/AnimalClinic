using AnimalClinic.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Repositories
{
    public class VetRepository : RepositoryBase, IVetRepository
    {
        public void Add(Vet vetModel)
        {
            throw new NotImplementedException();
        }

        public void Edit(Vet vetModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Vet> GetAll()
        {
            var vets = new List<Vet>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Vet", connection))
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        byte[] pictureBytes;
                        int columnIndex = reader.GetOrdinal("Picture");
                        if (!reader.IsDBNull(columnIndex))
                        {
                            long blobLength = reader.GetBytes(columnIndex, 0, null, 0, 0);
                            pictureBytes = new byte[blobLength];

                            reader.GetBytes(columnIndex, 0, pictureBytes, 0, (int)blobLength);
                        }else
                        {
                            pictureBytes = null;
                        }



                        var vet = new Vet()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Surname = reader.GetString(reader.GetOrdinal("Surname")),
                            Phone = reader.IsDBNull(reader.GetOrdinal("Phone")) ? 0 : reader.GetInt32(reader.GetOrdinal("Phone")),
                            Specialization = reader.GetString(reader.GetOrdinal("Specialization ")),
                            Email = reader.GetString(reader.GetOrdinal("Email")),
                            Description = reader.GetString(reader.GetOrdinal("Description")),
                            Picture = pictureBytes
                        };
                        vets.Add(vet);
                    }
                }
            }
            return vets;
        }

        public Vet GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Remove(int id)
        {
            
        }
    }
}
