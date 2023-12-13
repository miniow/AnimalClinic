using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{

    public class Appointment
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int AnimalId { get; set; } 
        public int VetId { get; set; } 
        public DateTime DateTime { get; set; } 
        public string Notes { get; set; } 
        public bool State { get; set; }
    }
}
