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
    /// Логика взаимодействия для AppointmentsListPage.xaml
    /// </summary>
    public partial class AppointmentsListPage : Page
    {
        public AppointmentsListPage()
        {
            InitializeComponent();
            var appoinments = Connection.clinic.Appointments.ToList();
            UpdatePage(appoinments);
        }
        public void UpdatePage(List<Appointments> clientServices)
        {
            ServiceWpar.Children.Clear();
            foreach (var item in clientServices)
            {
                ServiceWpar.Children.Add(new Controls.AppointmentsControl(item));
            }
        }
    }
}
