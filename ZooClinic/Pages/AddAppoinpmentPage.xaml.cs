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
    /// Логика взаимодействия для AddAppoinpmentPage.xaml
    /// </summary>
    public partial class AddAppoinpmentPage : Page
    {
        public AddAppoinpmentPage()
        {
            InitializeComponent();
            AnimalComboBox.ItemsSource = DB.Connection.clinic.Animals.ToList();
            VetComboBox.ItemsSource = DB.Connection.clinic.Veterinarians.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Appointments appointment = new Appointments();
            appointment.AnimalID = AnimalComboBox.SelectedIndex+1;
            appointment.VeterinarianID = VetComboBox.SelectedIndex+1;
            appointment.AppointmentDate = AppointmentDatePicker.SelectedDate;
            appointment.TreatmentPlan = TreatmentTextBox.Text;
            appointment.Diagnosis = DiagnosisTextBox.Text;
            appointment.ProcedureDescription = DescriptionTextBox.Text;

            Connection.clinic.Appointments.Add(appointment);
            Connection.clinic.SaveChanges();

            NavigationService.Navigate(new AuthorizationPage());
        }
    }
}
