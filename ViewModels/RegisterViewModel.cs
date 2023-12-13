using AnimalClinic.Models;
using AnimalClinic.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace AnimalClinic.ViewModels
{
    public static class Comparator
    {
        public static bool IsEqualTo(this SecureString ss1, SecureString ss2)
        {
            IntPtr bstr1 = IntPtr.Zero;
            IntPtr bstr2 = IntPtr.Zero;
            try
            {
                bstr1 = Marshal.SecureStringToBSTR(ss1);
                bstr2 = Marshal.SecureStringToBSTR(ss2);
                int length1 = Marshal.ReadInt32(bstr1, -4);
                int length2 = Marshal.ReadInt32(bstr2, -4);
                if (length1 == length2)
                {
                    for (int x = 0; x < length1; ++x)
                    {
                        byte b1 = Marshal.ReadByte(bstr1, x);
                        byte b2 = Marshal.ReadByte(bstr2, x);
                        if (b1 != b2) return false;
                    }
                }
                else return false;
                return true;
            }
            finally
            {
                if (bstr2 != IntPtr.Zero) Marshal.ZeroFreeBSTR(bstr2);
                if (bstr1 != IntPtr.Zero) Marshal.ZeroFreeBSTR(bstr1);
            }
        }
    }
    public class RegisterViewModel : StartViewModel
    {
        private string _errrorMessage ="";
        public UserModel User;
        private string _name = "";
        private string _sureName = "";
        private SecureString _password;
        private SecureString _confirmPassword;
        private string _email = "";
        private byte[] _picture;
        private IUserRepository userRepository;



        public string Name {
            get { return _name; }
            set { _name = value; OnPropertyChanged(nameof(Name)); }
        }
        public string Surname {
            get { return _sureName; }
            set { _sureName = value; OnPropertyChanged(nameof(Surname)); }
        }
        public SecureString Password {
            get { return _password; }
            set { _password = value; OnPropertyChanged(nameof(Password)); }
        }
        public SecureString ConfirmPassword {
            get { return _confirmPassword; }
            set { _confirmPassword = value; OnPropertyChanged(nameof(ConfirmPassword)); }
        }
        public string Email {
            get { return _email; }
            set { _email = value; OnPropertyChanged(nameof(Email)); }
        }
        public byte[] Picture {
            get { return _picture; }
            set { _picture = value; OnPropertyChanged(nameof(Picture)); }
        }
        public string ErrorMessage
        {
            get { return _errrorMessage; }
            set { _errrorMessage = value; OnPropertyChanged(nameof(ErrorMessage)); }
        }
        public ICommand RegisterCommand { get; }


        public RegisterViewModel()
        {
            userRepository = new UserRepository();
            RegisterCommand = new ViewModelCommand(ExecuteRegisterCommand);
           
        }

        private void ExecuteRegisterCommand(object obj)
        {
            try
            {
                if (!Email.Contains("@"))
                {
                    ErrorMessage = "Incorrect Email";
                }
                else if (_password.Length < 6)
                {
                    ErrorMessage = "Password must have more than 6 letters";
                }
                else if (!Comparator.IsEqualTo(Password, ConfirmPassword))
                {
                    ErrorMessage = "Wrong confirm password";
                }
                else if (Name.Length == 0)
                {
                    ErrorMessage = "Name is required";
                }
                else if (Surname.Length == 0)
                {
                    ErrorMessage = "Surename is requred";
                }
                else
                {
                    User = new UserModel()
                    {
                        Password = Password,
                        SureName = Surname,
                        Name = Name,
                        Email = Email,
                        Picture = Picture,
                    };

                    userRepository.Add(User);
                    App.OnUserRegister();
                }
            }
            catch (Exception ex)
            {
                ErrorMessage = ex.Message;
            }   
        }

    }
}
