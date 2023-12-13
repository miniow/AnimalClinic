using AnimalClinic.Models;
using AnimalClinic.Repositories;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace AnimalClinic.CustomControls
{
    /// <summary>
    /// Logika interakcji dla klasy AddAppointmentDialog.xaml
    /// </summary>
    public partial class AddAppointmentDialog : Window , INotifyPropertyChanged
    {

        private Appointment appointment;
        private string _errorMessage = "";
        public string ErrorMessage { get { return _errorMessage; } set { _errorMessage = value; OnPropertyChanged(nameof(ErrorMessage)); } }

        
        public delegate void AppointmentCreatedHandler(Appointment appointment);
        public event AppointmentCreatedHandler OnAppointmentCreate;
        private VetRepository _vetRepository;
        private AnimalRepository _animalRepository;
        private ObservableCollection<Animal> _animals = new ObservableCollection<Animal>();
        public ObservableCollection<Animal> Animals
        {
            get { return _animals; }
            set {  _animals = value; OnPropertyChanged(nameof(Animals)); }
        }
        private ObservableCollection<Vet> _vets = new ObservableCollection<Vet>();
        public ObservableCollection<Vet> Vets
        {
            get { return _vets; }
            set
            {
                _vets = value;
                OnPropertyChanged(nameof(Vets));
            }
        }
        private int _curentUser;

        public event PropertyChangedEventHandler? PropertyChanged;

        public AddAppointmentDialog(int userId)
        {
            appointment = new Appointment();
            DataContext = this;
            _vetRepository = new VetRepository();
            _animalRepository = new AnimalRepository();
            _curentUser = userId;
            InitializeComponent();
            LoadList();
        }
        protected void OnPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        private void LoadList()
        {
            var  vets = _vetRepository.GetAll();
            if (vets != null)
            {
                foreach(Vet v in vets)
                {
                    _vets.Add(v);
                }
            }
            var anim = _animalRepository.GetByUserAll(_curentUser);
            if (anim != null)
            {
                foreach (Animal a in anim)
                {
                    _animals.Add(a);
                }
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            TextRange textRange = new TextRange(
                 notes_tb.Document.ContentStart,
                notes_tb.Document.ContentEnd);
            try
            {
                appointment.VetId = (int)vet_cb.SelectedValue;
            }
            catch (Exception ex) { 
                ErrorMessage = "Select Vet";
                return;
            }
            try
            {
                appointment.AnimalId = (int)animal_cb.SelectedValue;
            }
            catch(Exception ex)
            {
                ErrorMessage = "Select Animal";
                return;
            }
            appointment.Notes = textRange.Text;
            if(dob_dp.SelectedDate == null || dob_dp.SelectedDate< DateTime.Now)
            {
                ErrorMessage = "select corect Date";
                return;
            }
            else
            {
                appointment.DateTime = dob_dp.SelectedDate ?? DateTime.Now;
            }
            OnAppointmentCreate?.Invoke(appointment);
            this.Close();
        }



    }
}
