using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public interface IVetRepository
    {
        void Add(Vet userModel);
        void Edit(Vet userModel);
        void Remove(int id);
        Vet GetById(int id);
        IEnumerable<Vet> GetAll();
    }
}
