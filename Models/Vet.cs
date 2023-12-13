using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public class Vet
    {
        public int Id { get; set; } // Unikalny identyfikator weterynarza
        public string Name { get; set; } // Imię i nazwisko weterynarza
        public string Surname { get; set; }
        public int Phone { get; set; }
        public string Specialization { get; set; } // Specjalizacja
        public int PhoneNumber { get; set; } // Numer kontaktowy
        public string Email { get; set; } // Adres e-mail
        public string Description { get; set; }
        public byte[] Picture { get; set; }


        public string FullName
        {
            get { return Name + " " + Surname; }
        }
    }
}
