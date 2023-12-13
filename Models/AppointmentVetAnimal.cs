using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public class AppointmentVetAnimal
    {
        public int Id { get; set; }
        public string AnimalName { get; set; }
        public string VeterianName { get; set; }
        public string VeterianSurename { get; set; }
        public byte[] AnimalPicture { get; set; }
        public byte[] VeterianPicture { get; set; }
        public DateTime Date { get; set; }
        public string Notes { get; set; }
        public bool State { get; set; }
    }
}
