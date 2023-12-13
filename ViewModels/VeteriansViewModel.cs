using AnimalClinic.Models;
using System;
using AnimalClinic.Repositories;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.ViewModels
{
    public class VeteriansViewModel: ViewModelBase
    {
        private IVetRepository vetRepository;
        private List<Vet> _vets = new List<Vet>();
        public List<Vet> Vets
        {
            get { return _vets; }
            set { _vets = value; OnPropertyChanged(nameof(Vets)); }
        }

        public VeteriansViewModel()
        {
            vetRepository = new VetRepository();
            LoadVets();
        }

        private void LoadVets()
        {
            //InitializeVets init = new InitializeVets();
            //init.InitializeDatabase();

            var vets = vetRepository.GetAll();
            if(vets!=null)
            {
                _vets = (List<Vet>)vets;
            }
        }
    }
}
