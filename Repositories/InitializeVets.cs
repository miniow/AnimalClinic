using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using AnimalClinic.Models;
using System.IO;

namespace AnimalClinic.Repositories
{
    public class InitializeVets : RepositoryBase
    {
        public InitializeVets() : base()
        {
        }

        public void InitializeDatabase()
        {
            var vets = new List<Vet>
             {
                new Vet { Id = 1, 
                    Name = "Jan", 
                    Surname = "Kowalski", 
                    Email = "jan.kowalski@example.com", 
                    Phone = 123456789,
                    Specialization = "Veterinary surgery",
                    Picture = LoadPicture("C:\\Users\\zymci\\Desktop\\kck\\AnimalClinic\\Images\\vets\\1.jpg"),
                    Description ="He completed his veterinary studies at the Faculty of Veterinary Medicine of the Agricultural University of Lublin in 1996. In 2006 he completed postgraduate specialization studies in the field of diseases of dogs and cats, obtaining the title of specialist in diseases of dogs and cats, and in 2012. - radiologist specialist. Since 1998, coowner and creator of the Animal clinic. Professionally, he deals with problems related to reproduction, surgery and imaging diagnostics of small animals. Privately, he loves good cinema and winter skiing, owner of the dog \"Bibi\"."
                },
                new Vet { Id = 2, 
                    Name = "Anna", 
                    Surname = "Nowak", 
                    Email = "anna.nowak@example.com", 
                    Phone = 987654321,
                    Specialization = "Veterinary radiology",
                    Picture = LoadPicture("C:\\Users\\zymci\\Desktop\\kck\\AnimalClinic\\Images\\vets\\2.jpg"),
                    Description="I graduated from the Faculty of Veterinary Medicine at the Agricultural University of Wrocław in 2001. I worked in a 24-hour clinic in Łódź for almost 10 years, during which time I participated in courses and training in small animals. I have been working at the Animal Veterinary Clinic since March 2011.Privately, I am a wife and mother of little Czech. I like traveling, especially to warm countries."
                },
                new Vet { Id = 3, 
                    Name = "Piotr", 
                    Surname = "Wiśniewski", 
                    Email = "piotr.wisniewski@example.com", 
                    Phone = 123123123,
                    Specialization="Veterinary dermatology",
                    Picture = LoadPicture("C:\\Users\\zymci\\Desktop\\kck\\AnimalClinic\\Images\\vets\\3.jpg"),
                    Description = "Graduate of the Faculty of Veterinary Medicine in Lublin in 1996. After graduation, he worked at the Department of Surgery of the Lublin Faculty of Veterinary Medicine as an assistant. Since September 1, 1998, he has been a co-owner of the Animal clinic in Łódź. He obtained the title of specialist in the field of dogs and cats diseases and radiology. He specializes in dog reproduction, neurology of dogs and cats, as well as surgery and neurosurgery."
                },
                    
                new Vet { Id = 4, 
                    Name = "Ewa",
                    Surname = "Zielińska", 
                    Email = "ewa.zielinska@example.com", 
                    Phone = 456456456,
                    Specialization="Veterinary ophthalmology",
                    Picture = LoadPicture("C:\\Users\\zymci\\Desktop\\kck\\AnimalClinic\\Images\\vets\\4.jpg"),
                    Description ="I am a graduate of the Faculty of Veterinary Medicine at the Wrocław University of Environmental and Life Sciences. After graduation, I completed my internship in a 24-hour clinic in Łódź. I started working at the \"Animal\" clinic at the end of 2017. When asked as a child: \"Who would I like to be in the future?\" – from an early age, I always answered that I was a VETERINARIAN. The opportunity to help animals gives me a lot of satisfaction, which is why I eagerly expand my knowledge on a daily basis, both in books and by participating in training. The fields that interest me most are diagnostic imaging, dermatology and dog and cat behaviorist."
                },
                new Vet { Id = 5, 
                    Name = "Krzysztof", 
                    Surname = "Zieliński", 
                    Email = "krzysztof.zielinska@example.com", 
                    Phone = 456456456,
                    Specialization="Veterinary cardiology",
                    Picture =  LoadPicture("C:\\Users\\zymci\\Desktop\\kck\\AnimalClinic\\Images\\vets\\5.jpg"),
                Description ="I obtained the title of veterinary technician in 2016. Animals have accompanied me since I was a child, especially dogs and horses, and I'm slowly warming up to cats :). During and after school, I had numerous internships with pets and wild exotic animals. I expand my knowledge by participating in industry conferences. I gained professional experience, especially in dealing with emergency patients, while working in 24-hour hospitals in Łódź. At \"Animal\" I am responsible for peri-procedure care for patients and organization of reception work"
                }
             };
            int i = 1;
            foreach (var vet in vets)
            {
                AddVet(vet);
                i++;
            }
        }
        public byte[] LoadPicture(string filePath)
        {
            if (string.IsNullOrEmpty(filePath))
            {
                return null;
            }

            try
            {
                return File.ReadAllBytes(filePath);
            }
            catch (Exception ex)
            {
                // Obsługa wyjątku, np. logowanie
                Console.WriteLine("Błąd podczas wczytywania zdjęcia: " + ex.Message);
                return null;
            }
        }

        private void AddVet(Vet vet)
        {
            using (var connection = GetConnection())
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"INSERT INTO Vet 
                                    (Id, Name, Surname, Email, Phone, Specialization, Description, Picture) 
                                    VALUES 
                                    (@Id, @Name, @Surname, @Email, @Phone, @Specialization, @Description, @Picture)";

                command.Parameters.AddWithValue("@Id", vet.Id);
                command.Parameters.AddWithValue("@Name", vet.Name);
                command.Parameters.AddWithValue("@Surname", vet.Surname);
                command.Parameters.AddWithValue("@Email", vet.Email);
                command.Parameters.AddWithValue("@Phone", vet.Phone);
                command.Parameters.AddWithValue("@Specialization", vet.Specialization);
                command.Parameters.AddWithValue("@Description", vet.Description);
                command.Parameters.AddWithValue("@Picture", vet.Picture);
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
    }
}
