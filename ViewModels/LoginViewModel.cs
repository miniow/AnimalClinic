using AnimalClinic.Models;
using AnimalClinic.Repositories;
using System;
using System.Net;
using System.Security;
using System.Security.Principal;
using System.Threading;
using System.Windows.Input;
using AnimalClinic;

namespace AnimalClinic.ViewModels
{
    public class LoginViewModel : ViewModelBase
    {

        private bool _isVisible = true;

        //Fields
        private string _username;
        private SecureString _password;
        private string _errorMessage;
        private IUserRepository userRepository;
        //properites


        public string Username
        {
            get { return _username; }
            set { _username = value; OnPropertyChanged(nameof(Username)); }
        }
        public SecureString Password {
            get { return _password; }
            set { _password = value; OnPropertyChanged(nameof(Password)); }
        }
        public string ErrorMessage {
            get { return _errorMessage; }
            set { _errorMessage = value; OnPropertyChanged(nameof(ErrorMessage)); }
        }
        public bool IsVisible { get { return _isVisible; } set { _isVisible = value; OnPropertyChanged(nameof(IsVisible)); } }
        //->commands
        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand RememverPasswordCommand { get; }



        //Construktor
        public LoginViewModel()
        {
            userRepository = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(p=>ExecuteRecoverPassCommand("", ""));
        }

        private void ExecuteRecoverPassCommand(string username, string email)
        {
            throw new NotImplementedException();
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            
            bool validData;
            if(string.IsNullOrEmpty(Username) || Username.Length<3  || Password==null || Password.Length<3 )
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;

        }

        private void ExecuteLoginCommand(object obj)
        {

            var isValidUser = userRepository.AuthenticateUser(new NetworkCredential(Username, Password));
            if (isValidUser)
            {

                Thread.CurrentPrincipal = new GenericPrincipal(
                    new GenericIdentity(Username), null);
                App.OnUserLoggedIn();
            }
            else
            {
                ErrorMessage = "* Invalid username or password";
            }
        }

    }
    
}
