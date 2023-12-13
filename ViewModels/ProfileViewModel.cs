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
    public class ProfileViewModel : MainViewModel
    {
        private UserModel _user;

        public UserModel User
        {
            get { return _user; }
            set { _user = value; OnPropertyChanged(nameof(User)); }
        }
        private IUserRepository _userRepository;
        public ICommand SaveCommand { get; private set; }

        public ProfileViewModel()
        {
            _userRepository = new UserRepository();
            User = _userRepository.GetById(base.CurrentUserID);

            SaveCommand = new ViewModelCommand(SaveProfile);
        }
        public void UpdatePicture(byte[] pictureData)
        {
            User.Picture = pictureData;
            OnPropertyChanged(nameof(User.Picture));
        }

        private void SaveProfile(object parameter)
        {
            try
            {
                _userRepository.Edit(User);
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }
            MainViewModel.ReloadUser();
        }
    }

}
