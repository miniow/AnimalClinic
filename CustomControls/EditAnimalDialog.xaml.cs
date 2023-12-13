using AnimalClinic.Models;
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

namespace AnimalClinic.CustomControls
{
    /// <summary>
    /// Logika interakcji dla klasy EditAnimalDialog.xaml
    /// </summary>
    public partial class EditAnimalDialog : Window,INotifyPropertyChanged
    {
        private Animal Animal= null;
        public delegate void AnimalCreatedHandler(Animal animal);
        public event AnimalCreatedHandler OnAnimalEdited;
        public event PropertyChangedEventHandler? PropertyChanged;
        private byte[] animapicture = null;
        private string _errorMessage = "";
        public string ErrorMessage { get { return _errorMessage; } set { _errorMessage = value; OnPropertyChanged(nameof(ErrorMessage)); } }
        public EditAnimalDialog(Animal animal)
        {
            InitializeComponent();
            DataContext = this;
            Animal = animal;

            // Ustawianie wartości dla każdego pola
            name_tb.Text = animal.Name;

            // Ustawianie wybranej płci
            if (animal.Gender == "Male")
            {
                gender_rb.IsChecked = true;
            }
            else
            {
                gender_rb.IsChecked = false;
            }

            // Ustawianie daty urodzenia
            dob_dp.SelectedDate = animal.DateOfBirth;

            // Ustawianie koloru, gatunku i rasy
            color_tb.Text = animal.Color;
            specie_tb.Text = animal.Specie;
            breed_tb.Text = animal.Breed;

            // Ustawianie zdjęcia (jeśli istnieje)
            if (animal.Picture != null && animal.Picture.Length > 0)
            {
                using (var memoryStream = new MemoryStream(animal.Picture))
                {
                    var image = new BitmapImage();
                    image.BeginInit();
                    image.CacheOption = BitmapCacheOption.OnLoad;
                    image.StreamSource = memoryStream;
                    image.EndInit();
                    animalImage.Source = image;
                }
            }

        }
        protected void OnPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
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
                            animapicture = imageBytes;
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
            if (name_tb.Text == "")
            {
                ErrorMessage = "Name is required";
                return;
            }

            try
            {
                if (dob_dp.SelectedDate > DateTime.Now)
                {
                    ErrorMessage = "Select corect Date";
                    return;
                }
            }
            catch (Exception ex)
            {
                ErrorMessage = "Date is required";
                return;
            }
            if (specie_tb.Text == "")
            {
                ErrorMessage = "Specie is required";
            }
            Animal.Name = name_tb.Text;
            Animal.Gender = (gender_rb.IsChecked == true) ? "Male" : "Female";
            Animal.DateOfBirth = dob_dp.SelectedDate ?? DateTime.Now;
            Animal.Color = color_tb.Text;
            Animal.Specie = specie_tb.Text;
            Animal.Breed = breed_tb.Text;
            if(animapicture !=null)
            {
                Animal.Picture = animapicture;
            }
            OnAnimalEdited?.Invoke(Animal);
            this.Close();
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
