using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public interface IAppointmentsRepository
    {
        void Add(Appointment appointment);
        void Edit(Appointment appointment);
        void Remove(int Id);
        IEnumerable<Appointment> GetAll();
        IEnumerable<Appointment> GetAllUserAppointments(int UserId);
    }
}
