using AnimalClinic.ViewModels;
using System;
using System.Collections.Generic;
using System.Globalization;
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

namespace AnimalClinic.Views
{
    /// <summary>
    /// Logika interakcji dla klasy StartView.xaml
    /// </summary>
    public partial class StartView : Window
    {

        public StartView()
        {
            InitializeComponent();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        public void ShowLoginView()
        {
            var viewMdole = DataContext as StartViewModel;
            if (viewMdole != null)
            {
                viewMdole.ExecuteShowLoginViewCommand(null);
            }
        }
    }
}
