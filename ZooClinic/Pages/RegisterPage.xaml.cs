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
using System.Windows.Navigation;
using System.Windows.Shapes;
using ZooClinic.DB;

namespace ZooClinic.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegisterPage.xaml
    /// </summary>
    public partial class RegisterPage : Page
    {
        public RegisterPage()
        {
            InitializeComponent();
            SpecialityCb.ItemsSource = DB.Connection.clinic.Speciality.Where<Speciality>(i => i.ID != 1).ToList(); 
        }

        private void SubmitBt_Click(object sender, RoutedEventArgs e)
        {
            Veterinarians veterinarian = new Veterinarians();
            veterinarian.FirstName = FirstNameTb.Text;
            veterinarian.LastName = LastNameTb.Text;
            veterinarian.Login = LoginTb.Text;
            veterinarian.Password = PasswordTb.Text;
            veterinarian.IdSpecialty = SpecialityCb.SelectedIndex+1;
            Connection.clinic.Veterinarians.Add(veterinarian);
            Connection.clinic.SaveChanges();
            MessageBox.Show("Врач успешно добавлен");
            NavigationService.GoBack();
        }

        private void AddAppointmentBt_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddAppoinpmentPage());
        }
    }
}
