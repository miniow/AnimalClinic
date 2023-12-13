using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using AnimalClinic.Views;
using AnimalClinic.ViewModels;
namespace AnimalClinic
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static event EventHandler UserLoggedIn;
        public static event EventHandler UserLoggedOut;
        public static event EventHandler UserRegister;
        private StartView startView;
        private MainView mainView;
        protected void ApplicationStart(object sender, StartupEventArgs e)
        {
           // var mainView = new MainView();
         //   mainView.Show();
            startView = new StartView();
            UserLoggedIn += OnUserLoggedIn;
            UserLoggedOut += OnUserLoggedOut;
            UserRegister += OnUserRegister;
            startView.Show();
        }

        public static void OnUserRegister()
        {
            UserRegister?.Invoke(null, EventArgs.Empty);
        }
        public static void OnUserLoggedIn()
        {
            UserLoggedIn?.Invoke(null, EventArgs.Empty);
        }
        public static void OnUserLoggedOut()
        {
            UserLoggedOut?.Invoke(null, EventArgs.Empty);
        }

        private void OnUserRegister(object sender, EventArgs e)
        {
            startView.ShowLoginView();
        }


        private void OnUserLoggedOut(object sender, EventArgs e) {
            startView = new StartView();
            startView.Show();
            mainView.Close();
        }

        private void OnUserLoggedIn(object sender, EventArgs e)
        {
            mainView = new MainView();
            mainView.Show();
            startView.Close();
        }

    }
}
