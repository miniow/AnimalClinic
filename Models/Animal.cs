using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public class Animal
    {
        public int Id { get; set; } // Unikalny identyfikator zwierzęcia
        public string Name { get; set; } // Imię zwierzęcia
        public string Gender { get; set; } // Płeć zwierzęcia
        public DateTime DateOfBirth { get; set; } // Data urodzenia
        public string Color { get; set; } // Kolor sierści/umascenie
        public string Specie { get; set; } // Gatunek, np. pies, kot
        public string Breed { get; set; } // Rasa
        public int UserId { get; set; }
        public byte[] Picture { get; set; }
        public int AgeInMonths
        {
            get { return CalculateAgeInMonths(DateOfBirth); }
        }

        private int CalculateAgeInMonths(DateTime birthDate)
        {
            DateTime now = DateTime.Now;
            int months = (now.Year - birthDate.Year) * 12 + now.Month - birthDate.Month;
            if (now.Day < birthDate.Day)
            {
                months--;
            }

            return months;
        }
    }
}
