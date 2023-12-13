using AnimalClinic.Models;
using AnimalClinic.Views;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows;
using System.Windows.Input;

namespace AnimalClinic.ViewModels
{
    public class StartViewModel : ViewModelBase
    {

        private ViewModelBase _currentChildView;
        private string _caption;
        private string _backText;
        private bool _isButtonsVisible = true;
        private string _buttonContent;
        public string BackText
        {
            get { return _backText; } 
            set { _backText = value; OnPropertyChanged(nameof(BackText)); }
        }
        public string ButtonContent
        {
            get { return _buttonContent; }
            set { _buttonContent = value; OnPropertyChanged(nameof(ButtonContent)); }
        }
        public bool IsButtonsVisible { get { return _isButtonsVisible; } 
            set { _isButtonsVisible = value; OnPropertyChanged(nameof(IsButtonsVisible)); } }
        public string Caption { get { return _caption; } 
            set { _caption = value; OnPropertyChanged(nameof(Caption)); } }
        public ViewModelBase CurrentChildView { get { return _currentChildView; } 
            set { _currentChildView = value; OnPropertyChanged(nameof(CurrentChildView)); } }
        //Fields
        public ICommand ShowRegisterViewCommand { get; }
        public ICommand ShowLoginViewCommand { get; }
        private ICommand _currentButtonCommand;
        public ICommand CurrentButtonCommand
        {
            get { return _currentButtonCommand; }
            set { _currentButtonCommand = value; OnPropertyChanged(nameof(CurrentButtonCommand)); }
        }
        public StartViewModel()
        {      

            ShowRegisterViewCommand = new ViewModelCommand(ExecuteShowRegisterViewCommand);
            ShowLoginViewCommand = new ViewModelCommand(ExecuteShowLoginViewCommand);
            ExecuteShowLoginViewCommand(null);
        }



        private void ExecuteShowRegisterViewCommand(object obj)
        {

            CurrentChildView = new RegisterViewModel(); 
            Caption = "REGISTER";
            BackText = "Back To Login";
            ButtonContent = "Login";
            CurrentButtonCommand = ShowLoginViewCommand;
        }

        public void ExecuteShowLoginViewCommand(object obj)
        {
            CurrentChildView = new LoginViewModel();
            Caption = "LOG IN";
            BackText = "Dont Have Account?";
            ButtonContent = "Register";
            CurrentButtonCommand = ShowRegisterViewCommand;

        }
    }

}
