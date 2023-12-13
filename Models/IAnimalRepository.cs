using Microsoft.VisualBasic.ApplicationServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public interface IAnimalRepository
    {
        void Add(Animal animal);
        void Edit(Animal Animal);
        void Remove(int id);
        Animal GetById(int id);
        Animal GetByUserId(int UserId);
        IEnumerable<Animal> GetByUserAll(int UserId);
    }
}
