using System;
using System.Collections.Generic;
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
using AnimalClinic.Models;
using static AnimalClinic.CustomControls.AddAnimalDialog;
namespace AnimalClinic.CustomControls
{
    /// <summary>
    /// Logika interakcji dla klasy AddAnimalDialog.xaml
    /// </summary>
    public partial class AddAnimalDialog : Window, INotifyPropertyChanged
    {
        public delegate void AnimalCreatedHandler(Animal animal);
        public event AnimalCreatedHandler OnAnimalCreated;
        public event PropertyChangedEventHandler? PropertyChanged;
        private string _errorMessage = "";
        public string ErrorMessage { get { return _errorMessage; } set { _errorMessage = value; OnPropertyChanged(nameof(ErrorMessage)); } }
        private Animal Animal;

        public AddAnimalDialog()
        {
            InitializeComponent();
            DataContext = this;
            Animal = new Animal();
        }
        private void Border_DragEnter(object sender, DragEventArgs e)
        {
            if (!e.Data.GetDataPresent(DataFormats.FileDrop)) e.Effects = DragDropEffects.None;
        }
        private void Border_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                if (files != null && files.Length > 0)
                {
                    try
                    {
                        BitmapImage bitmap = new BitmapImage(new Uri(files[0]));
                        animalImage.Source = bitmap;
                        using (var memoryStream = new MemoryStream())
                        {
                            var encoder = new PngBitmapEncoder();
                            encoder.Frames.Add(BitmapFrame.Create(bitmap));
                            encoder.Save(memoryStream);
                            byte[] imageBytes = memoryStream.ToArray();
                            Animal.Picture = imageBytes;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Nie można wczytać obrazu: " + ex.Message);
                    }
                }
            }
        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if(name_tb.Text == "")
            {
                ErrorMessage = "Name is required";
                return;
            }

            try
            {
                if(dob_dp.SelectedDate > DateTime.Now)
                {
                    ErrorMessage = "Select corect Date";
                    return;
                }
            }catch (Exception ex)
            {
                ErrorMessage = "Date is required";
                return;
            }
            if (specie_tb.Text =="")
            {
                ErrorMessage = "Specie is required";
            }
            Animal.Name = name_tb.Text;
            Animal.Gender = (gender_rb.IsChecked == true) ? "Male" : "Female";
            Animal.DateOfBirth = dob_dp.SelectedDate ?? DateTime.Now;
            Animal.Color = color_tb.Text;
            Animal.Specie = specie_tb.Text;
            Animal.Breed = breed_tb.Text;
            OnAnimalCreated?.Invoke(Animal);
            this.Close();
        }
        protected void OnPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
