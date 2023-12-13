using System;
using System.Collections.Generic;
using System.Linq;
using AnimalClinic.CustomControls;
using AnimalClinic.Models;
using AnimalClinic.Repositories;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Collections.ObjectModel;
using static AnimalClinic.CustomControls.AddAppointmentDialog;
using System.Windows;
namespace AnimalClinic.ViewModels
{
    public class AppointmentViewModel : MainViewModel
    {
        private AppointmentsRepository _appointmentsRepository;
        private ObservableCollection<AppointmentVetAnimal> _appointments = new ObservableCollection<AppointmentVetAnimal>();
        public ObservableCollection<AppointmentVetAnimal> Appointments { get { return _appointments; } set { _appointments = value; OnPropertyChanged(nameof(Appointments)); } }
        private ObservableCollection<AppointmentVetAnimal> _appointmentsCanceled = new ObservableCollection<AppointmentVetAnimal>();
        public ObservableCollection<AppointmentVetAnimal> AppointmentsCancele { get { return _appointmentsCanceled; } set { _appointmentsCanceled = value; OnPropertyChanged(nameof(AppointmentsCancele)); } }
        private ObservableCollection<AppointmentVetAnimal> _appointmentsHistory = new ObservableCollection<AppointmentVetAnimal>();
        public ObservableCollection<AppointmentVetAnimal> AppointmentsHistory { get { return _appointmentsHistory; } set { _appointmentsHistory = value; OnPropertyChanged(nameof(AppointmentsHistory)); } }

        private ObservableCollection<AppointmentVetAnimal> _currentAppointments;
        public ObservableCollection<AppointmentVetAnimal> CurrentAppointments
        {
            get { return _currentAppointments; }
            set { _currentAppointments = value; OnPropertyChanged(nameof(CurrentAppointments)); }
        }

        public ICommand ShowActiveAppointments { get; }
        public ICommand ShowCancelledAppointments { get; }
        public ICommand ShowHistoryAppointments { get; }
        public ICommand AddApointment { get; }
        public ICommand CancelApointment { get;}
        
        public AppointmentViewModel()
        {
            _appointmentsRepository = new AppointmentsRepository();

            ShowActiveAppointments = new ViewModelCommand(ExecuteShowActiveAppointments);
            ShowCancelledAppointments = new ViewModelCommand(ExecuteShowCancelledAppointments);
            ShowHistoryAppointments = new ViewModelCommand(ExecuteShowHistoryAppointments);
            AddApointment = new ViewModelCommand(ExecuteAddApointment);
            CancelApointment = new ViewModelCommand(ExecuteCancelAppointment);

            LoadAppointments();
            
        }

        private void LoadAppointments()
        {
            _appointmentsHistory = new ObservableCollection<AppointmentVetAnimal>();
            _appointmentsCanceled = new ObservableCollection<AppointmentVetAnimal>();
            _appointments = new ObservableCollection<AppointmentVetAnimal>();
            var appointments = _appointmentsRepository.GetAllUser(base.CurrentUserID);
            if(appointments != null)
            {
                foreach(AppointmentVetAnimal a in appointments)
                {
                    if(a.State == false && a.Date <DateTime.Now)
                    {
                        _appointmentsHistory.Add(a);
                    }
                    else if(a.Date > DateTime.Now && a.State == false)
                    {
                        _appointments.Add(a);
                    }
                    else
                    {
                        _appointmentsCanceled.Add(a);
                    }
                }
            }
            CurrentAppointments = Appointments;
        }

        private void ExecuteAddApointment(object obj)
        {
            var dialog = new AddAppointmentDialog(base.CurrentUserID);
            dialog.OnAppointmentCreate += AppointmentCreatedHandle;
            dialog.ShowDialog();
        }

        private void AppointmentCreatedHandle(Appointment appointment)
        {
            appointment.UserId = base.CurrentUserID;
            _appointmentsRepository.Add(appointment);
            _appointments.Clear();
            LoadAppointments();
        }

        private void ExecuteCancelAppointment(object obj)
        {
            MessageBoxResult result = MessageBox.Show("Are you sure?", "Confirm", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                if (obj is AppointmentVetAnimal selectedAppointment)
                {

                    selectedAppointment.State = false;
                    try
                    {
                        _appointmentsRepository.Cancel(selectedAppointment.Id);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }
                }
                LoadAppointments();
            }
            else
            {
                return;
            }
            
        }

        private void ExecuteShowHistoryAppointments(object obj)
        {
            CurrentAppointments = AppointmentsHistory;
        }

        private void ExecuteShowCancelledAppointments(object obj)
        {
            CurrentAppointments = AppointmentsCancele;
        }

        private void ExecuteShowActiveAppointments(object obj)
        {
            CurrentAppointments = Appointments;
        }
    }
}
