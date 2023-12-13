using System;
using System.Collections.Generic;
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
using System.Runtime.InteropServices;
using System.Runtime;
using System.Windows.Interop;
using System.Windows.Controls.Primitives;

namespace AnimalClinic.Views
{
    /// <summary>
    /// Logika interakcji dla klasy MainView.xaml
    /// </summary>
    public partial class MainView : Window
    {
        public MainView()
        {
            InitializeComponent();
            this.LocationChanged += MainWindow_LocationChanged;

        }






        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

        private void pnlControlBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            WindowInteropHelper helper = new WindowInteropHelper(this);
            SendMessage(helper.Handle,161, (IntPtr)2, (IntPtr)0);
        }

        private void pnlControlBar_MouseEnter(object sender, MouseEventArgs e)
        {
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
        }

        private void btnColse_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            if(WindowState.Equals(WindowState.Maximized))
                this.WindowState = WindowState.Normal;
            else
            {
                this.WindowState = WindowState.Maximized;
            }
            
            
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
                this.WindowState = WindowState.Minimized;
        }

        private void MyButton_Click(object sender, RoutedEventArgs e)
        {
            CalendarPopup.IsOpen = false;
            NotificationPopup.IsOpen = !NotificationPopup.IsOpen;
            
        }
        private void MainWindow_LocationChanged(object sender, EventArgs e)
        {
            // Aktualizacja położenia Popup
            var offset = NotificationPopup.HorizontalOffset;
            NotificationPopup.HorizontalOffset = offset + 1;
            NotificationPopup.HorizontalOffset = offset;
            CalendarPopup.HorizontalOffset = offset + 1;
            CalendarPopup.HorizontalOffset = offset;
        }
        private void Calendar_Button_Click(object sender, RoutedEventArgs e)
        {
            NotificationPopup.IsOpen = false;
            CalendarPopup.IsOpen = !CalendarPopup.IsOpen;
        }
    }
}
