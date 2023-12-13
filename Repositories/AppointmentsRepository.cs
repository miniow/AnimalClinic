using AnimalClinic.Models;
using Microsoft.VisualBasic.ApplicationServices;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Repositories
{
    public class AppointmentsRepository : RepositoryBase, IAppointmentsRepository
    {
        public void Cancel(int appointmentId)
        {
            Appointment appointment = Get(appointmentId);
            appointment.State = true;
            if(appointment != null )
            {
                Edit(appointment);
            }
            else
            {
                throw new Exception("cannot find appointment");
            }

        }
        public void Add(Appointment appointment)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"INSERT INTO Appointments 
                                (UserId, AnimalId, VetId, Date, Notes, State) 
                                VALUES 
                                (@UserId, @AnimalId, @VetId, @Date, @Notes, @State)";
                command.Parameters.AddWithValue("@UserId", appointment.UserId);
                command.Parameters.AddWithValue("@AnimalId", appointment.AnimalId);
                command.Parameters.AddWithValue("@VetId", appointment.VetId);
                command.Parameters.AddWithValue("@Date", appointment.DateTime);
                command.Parameters.AddWithValue("@Notes", appointment.Notes ?? (object)DBNull.Value);
                command.Parameters.AddWithValue("@State", appointment.State);

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
        public void Edit(Appointment appointment)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"UPDATE Appointments SET 
                            UserId = @UserId, 
                            AnimalId = @AnimalId, 
                            VetId = @VetId, 
                            Date = @Date, 
                            Notes = @Notes, 
                            State = @State
                            WHERE Id = @Id";
                command.Parameters.AddWithValue("@UserId", appointment.UserId);
                command.Parameters.AddWithValue("@AnimalId", appointment.AnimalId);
                command.Parameters.AddWithValue("@VetId", appointment.VetId);
                command.Parameters.AddWithValue("@Date", appointment.DateTime);
                command.Parameters.AddWithValue("@Notes", appointment.Notes ?? (object)DBNull.Value);
                command.Parameters.AddWithValue("@State", appointment.State);
                command.Parameters.AddWithValue("@Id", appointment.Id);

                command.ExecuteNonQuery();
            }
        }
        public Appointment Get(int Id)
        {
            Appointment appointment= new Appointment();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Appointments WHERE Id = @Id", connection))
            {
                command.Parameters.AddWithValue("@Id", Id);
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        appointment = new Appointment()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                            AnimalId = reader.GetInt32(reader.GetOrdinal("AnimalId")),
                            VetId = reader.GetInt32(reader.GetOrdinal("VetId")),
                            DateTime = reader.GetDateTime(reader.GetOrdinal("Date")),
                            Notes = reader["Notes"] as string,
                            State = reader.GetBoolean(reader.GetOrdinal("State"))
                        };
                    }

                }
            }
            return appointment;
        }
        public IEnumerable<Appointment> GetAll()
        {
            var appointments = new List<Appointment>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Appointments", connection))
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var appointment = new Appointment()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                            AnimalId = reader.GetInt32(reader.GetOrdinal("AnimalId")),
                            VetId = reader.GetInt32(reader.GetOrdinal("VetId")),
                            DateTime = reader.GetDateTime(reader.GetOrdinal("Date")),
                            Notes = reader["Notes"] as string,
                            State = reader.GetBoolean(reader.GetOrdinal("State"))
                        };
                        appointments.Add(appointment);
                    }
                }
            }
            return appointments;
        }
        public IEnumerable<Appointment> GetAllUserAppointments(int UserId)
        {
            var appointments = new List<Appointment>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT * FROM Appointments WHERE UserId = @UserId", connection))
            {
                command.Parameters.AddWithValue("@UserId", UserId);
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var appointment = new Appointment()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                            AnimalId = reader.GetInt32(reader.GetOrdinal("AnimalId")),
                            VetId = reader.GetInt32(reader.GetOrdinal("VetId")),
                            DateTime = reader.GetDateTime(reader.GetOrdinal("Date")),
                            Notes = reader["Notes"] as string,
                            State = reader.GetBoolean(reader.GetOrdinal("State"))
                        };
                        appointments.Add(appointment);
                    }
                }
            }
            return appointments;
        }
        public IEnumerable<AppointmentVetAnimal> GetAllUser(int UserId)
        {
            var appointments = new List<AppointmentVetAnimal>();
            using (var connection = GetConnection())
            using (var command = new SqlCommand("SELECT ap.Id, a.Name AS AnimalName, v.Name AS VeterianName, v.Surname AS VeterianSurename, a.Picture AS AnimalPicture, v.Picture AS VeterianPicture, ap.Date, ap.Notes, ap.State FROM Appointments ap INNER JOIN    Animals a ON ap.AnimalId = a.Id INNER JOIN   Vet v ON ap.VetId = v.Id WHERE  ap.UserId = @UserId", connection))
            {
                command.Parameters.AddWithValue("@UserId", UserId);
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        byte[] pictureBytes;
                        int columnIndex = reader.GetOrdinal("AnimalPicture");
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
                        byte[] pictureBytes2;
                        int columnIndex2 = reader.GetOrdinal("VeterianPicture");
                        if (!reader.IsDBNull(columnIndex2))
                        {
                            long blobLenght = reader.GetBytes(columnIndex2, 0, null, 0, 0);
                            pictureBytes2 = new byte[blobLenght];

                            reader.GetBytes(columnIndex2, 0, pictureBytes2, 0, (int)blobLenght);
                        }
                        else { pictureBytes2 = null; }



                        var appointment = new AppointmentVetAnimal()
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            AnimalName = reader["AnimalName"] as string,
                            VeterianName = reader["VeterianName"] as string,
                            VeterianSurename = reader["VeterianSurename"] as string,
                            Notes = reader["Notes"] as string,
                            State = reader.GetBoolean(reader.GetOrdinal("State")),
                            Date = reader.GetDateTime(reader.GetOrdinal("Date")),
                            VeterianPicture = pictureBytes2,
                            AnimalPicture = pictureBytes
                        };
                        appointments.Add(appointment);
                    } 
                }
            }
            return appointments;
         }
        public void Remove(int Id)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "DELETE FROM Appointments WHERE Id = @Id";
                command.Parameters.AddWithValue("@Id", Id);

                command.ExecuteNonQuery();
            }
        }
    }
}
