using AnimalClinic.CustomControls;
using AnimalClinic.Models;
using AnimalClinic.Repositories;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static AnimalClinic.CustomControls.AddAnimalDialog;

namespace AnimalClinic.ViewModels
{
    public class AnimalViewModel : MainViewModel
    {
        private string _animalCount;
        public string AnimalCount
        {
            get { return _animalCount; }
            set { _animalCount = value; OnPropertyChanged(nameof(AnimalCount));  }
        }
        private ObservableCollection<Animal> _animals = new ObservableCollection<Animal>();
        private IAnimalRepository animalRepository;
        public ICommand OpenAddAnimalDialogCommand { get; }
        public ICommand EditAnimalCommand { get; }
        public ICommand DeleteAnimalCommand { get; }


        public ObservableCollection<Animal> Animals
        {
            get { return _animals; }
            set { _animals = value;
                OnPropertyChanged(nameof(Animals)); }
        }

        public AnimalViewModel()
        {
            OpenAddAnimalDialogCommand = new ViewModelCommand(ExecuteOpenAddAnimalDialogCommand);
            EditAnimalCommand = new ViewModelCommand(ExecuteEditAnimalCommand);
            DeleteAnimalCommand = new ViewModelCommand(ExecuteDeleteAnimalCommand);
            animalRepository = new AnimalRepository();
            LoadAnimalsData();      
        }

        private void ExecuteEditAnimalCommand(object animal)
        {
            if (animal is Animal selectedAnimal)
            {
                var dialog = new EditAnimalDialog(selectedAnimal);
                dialog.OnAnimalEdited += AnimalEditedHandler;
                dialog.ShowDialog();
            }
        }

        private void AnimalEditedHandler(Animal animal)
        {
            animal.UserId = base.CurrentUserID; // to implement
            try
            {
                animalRepository.Edit(animal);
            }
            catch(Exception ex)
            {
                MessageBox.Show("edited unseccusfuly");
                return;
            }
            LoadAnimalsData();
        }

        private void ExecuteDeleteAnimalCommand(object animal)
        {
            if(animal is Animal selectedAnimal)
            {
                animalRepository.Remove(selectedAnimal.Id);
                Animals.Remove(selectedAnimal);
                AnimalCount = $"You have {Animals.Count} Animals";
            }
        }

        private void ExecuteOpenAddAnimalDialogCommand(object obj)
        {
            var dialog = new AddAnimalDialog();
            dialog.OnAnimalCreated += AnimalCreatedHandler;
            dialog.ShowDialog();
        }

        private void AnimalCreatedHandler(Animal animal)
        {
            animal.UserId = base.CurrentUserID;
            animalRepository.Add(animal);
            _animals.Clear();
            LoadAnimalsData();

        }

        private void LoadAnimalsData()
        {
            var animals = animalRepository.GetByUserAll(base.CurrentUserID);
            if(animals != null)
            {
                foreach(Animal a in animals)
                {
                    _animals.Add(a);
                }
                _animalCount = $"You have {Animals.Count} Animals";
            }
        }
    }
}
