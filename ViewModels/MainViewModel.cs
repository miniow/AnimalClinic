using AnimalClinic.Models;
using AnimalClinic.Repositories;
using AnimalClinic.ViewModels;
using FontAwesome.Sharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using System.IO;
using System.Reflection;
using System.Collections.ObjectModel;
namespace AnimalClinic.ViewModels
{

    public class ChangeViewEventArgs : EventArgs
    {
        public string ViewName { get; set; }
    }
    public class Notification
    {
        public string Message { get; set; }
    }
    public class MainViewModel : ViewModelBase
    {
        public ObservableCollection<Notification> Notifications { get; private set; }

        private bool _isPopupOpen;
        public bool IsPopupOpen
        {
            get { return _isPopupOpen; }
            set
            {
                _isPopupOpen = value;
                OnPropertyChanged(nameof(IsPopupOpen));
            }
        }

        public static event EventHandler ShowVetView;
        public static event EventHandler UserProfileChanged;
        //Fields
        public int CurrentUserID{ get; set; }
        private UserAccountModel _currentUserAccount;
        private IUserRepository userRepository;
        private IAppointmentsRepository _appointmentsRepository;
        private ViewModelBase _currentChildView;
        private string _caption;
        private IconChar _icon;
        private bool _isHomeViewActive = true;
        private bool _isVetViewActive;

        public bool IsHomeViewActive { get { return  _isHomeViewActive; } set { _isHomeViewActive = value; OnPropertyChanged(nameof(IsHomeViewActive)); } }
        public bool IsVetViewActive { get { return  _isVetViewActive; } set { _isVetViewActive = value; OnPropertyChanged(nameof(IsVetViewActive)); } }
         public UserAccountModel CurrentUserAccount
        {
            get
            {
                return _currentUserAccount;
            }

            set
            {
                _currentUserAccount = value;
                OnPropertyChanged(nameof(CurrentUserAccount));
            }
        }

        public ViewModelBase CurrentChildView { get { return _currentChildView; } set { _currentChildView = value; OnPropertyChanged(nameof(CurrentChildView)); }}
        public string Caption { get { return _caption; } set { _caption = value; OnPropertyChanged(nameof(Caption)); } }
        public IconChar Icon { get { return _icon; } set { _icon = value;OnPropertyChanged(nameof(Icon)); } }

        public ICommand ShowHomeViewCommand { get; } 
        public ICommand ShowAnimalViewCommand { get; } 
        public ICommand ShowVeteriansViewCommand { get; }
        public ICommand ShowAppointmentsViewCommand { get; }
        public ICommand ShowProfileViewCommand { get; }
        public ICommand ShowSettingsViewCommand { get; }
        public ICommand LogOutCommand { get; }

        public MainViewModel()
        {
            Notifications = new ObservableCollection<Notification>();
            userRepository = new UserRepository();
            CurrentUserAccount = new UserAccountModel();
            
            ShowVetView += OnShowVetView;
            UserProfileChanged += ReloadUser;
            LogOutCommand = new ViewModelCommand(ExecuteLogOutCommand);
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowAnimalViewCommand = new ViewModelCommand(ExecuteShowAnimalViewCommand);
            ShowVeteriansViewCommand = new ViewModelCommand(ExecuteShowVeteriansViewCommand);
            ShowAppointmentsViewCommand = new ViewModelCommand(ExecuteShowAppointmentsViewCommand);
            ShowProfileViewCommand = new ViewModelCommand(ExecuteShowProfileViewCommand);
            ShowSettingsViewCommand = new ViewModelCommand(ExecuteShowSettingsViewCommand);
            this.ChangeViewRequested += MainViewModel_ChangeViewRequested;
            _appointmentsRepository = new AppointmentsRepository();


            ExecuteShowHomeViewCommand(null);
            LoadCurrentUserData();
            LoadNotification();
        }
        public void LoadNotification()
        {
            var app = _appointmentsRepository.GetAllUserAppointments(CurrentUserID);
            var currentDate = DateTime.Now;
            var animalrepo = new AnimalRepository();
            foreach (Appointment a in app)
            {
                

                
                if (a.DateTime > currentDate && (a.DateTime - currentDate).TotalDays <= 7 && a.State == false)
                {
                    var animal = animalrepo.GetById(a.AnimalId);
                    string notificationMessage = $"Upcomming {animal.Name}'s visit at {a.DateTime.ToString("dd-MM-yyyy")}";


                    Notifications.Add(new Notification { Message = notificationMessage });
                }
            }
        }

        public static void ReloadUser()
        {
            UserProfileChanged?.Invoke(null, EventArgs.Empty);
        }
        private void ReloadUser(object sender, EventArgs e)
        {
            LoadCurrentUserData();
        }
        public static void OnShowVetView()
        {
            ShowVetView?.Invoke(null, EventArgs.Empty);
        }
       
        private void OnShowVetView(object sender, EventArgs e)
        {
            ExecuteShowVeteriansViewCommand(null);
            IsHomeViewActive = false;
            IsVetViewActive = true;
            
        }

        private void MainViewModel_ChangeViewRequested(object sender, ChangeViewEventArgs e)
        {
            if (e.ViewName == "VeteriansView")
            {
                ExecuteShowVeteriansViewCommand(null);
            }

        }
        private void ExecuteLogOutCommand(object obj)
        {
            App.OnUserLoggedOut();
        }

        private void ExecuteShowSettingsViewCommand(object obj)
        {
            CurrentChildView = new SettingsViewModel();
            Caption = "Settings";
            Icon = IconChar.Gear;
        }

        private void ExecuteShowProfileViewCommand(object obj)
        {
            CurrentChildView = new ProfileViewModel();
            Caption = "Profile";
            Icon = IconChar.UserAlt;
        }

        private void ExecuteShowAppointmentsViewCommand(object obj)
        {
            CurrentChildView = new AppointmentViewModel();
            Caption = "Appointments";
            Icon = IconChar.Calendar;
        }

        public void ExecuteShowVeteriansViewCommand(object obj)
        {
            CurrentChildView = new VeteriansViewModel();
            Caption = "Veterinans";
            Icon = IconChar.UserDoctor;
        }

        private void ExecuteShowAnimalViewCommand(object obj)
        {
            CurrentChildView = new AnimalViewModel();
            Caption = "Animals";
            Icon = IconChar.Paw;
        }

        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomeViewModel();       
            Caption = "Clinic";
            Icon = IconChar.HouseChimneyMedical;

        }


        private void LoadCurrentUserData()
        {
            var user = userRepository.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
            if (user != null)
            {
                CurrentUserAccount.Username = user.Name;
                CurrentUserAccount.DisplayName = $"Welcome {user.Name} {user.SureName}";

                if(user.Picture != null)
                {
                    CurrentUserAccount.ProfilePicture = user.Picture;
                }
                else
                {
                    CurrentUserAccount.ProfilePicture = LoadDefaultPicture();
                }
                
                CurrentUserID = int.Parse(user.Id);
            }
            else
            {
                CurrentUserAccount.DisplayName = "Invalid user, not logged in";

            }
        }
        private Byte[] LoadDefaultPicture()
        {
            string baseDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            string imagePath = Path.Combine(baseDirectory, "..", "..", "..", "Images", "user-icon.png");
            string normalizedPath = Path.GetFullPath(imagePath);
            byte[] fileBytes = new byte[2];
            try
            {
                fileBytes = File.ReadAllBytes(normalizedPath);
            }catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            return fileBytes;
        }
    }
}
