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

namespace ZooClinic.Controls
{
    /// <summary>
    /// Логика взаимодействия для AppointmentsControl.xaml
    /// </summary>
    public partial class AppointmentsControl : UserControl
    {
        private Appointments app;
        public AppointmentsControl(Appointments appointments)
        {
            InitializeComponent();
            app = appointments;
            var appID = Connection.clinic.Appointments.FirstOrDefault(x => x.ID == app.ID).ID;
            NameTb.Text = Connection.clinic.Animals.FirstOrDefault(x => x.ID == app.AnimalID).Name;
            OwnerTb.Text = "Ветеринар: " + Connection.clinic.Veterinarians.FirstOrDefault(x => x.ID == appID).LastName + " " + Connection.clinic.Owners.FirstOrDefault(x => x.ID == appID).FirstName;
            AgeTb.Text = "Дата: " + Convert.ToString(Connection.clinic.Appointments.FirstOrDefault(x => x.ID == appID).AppointmentDate);
            MedicalRecordTb.Text ="Описание процедуры: " + Connection.clinic.Appointments.FirstOrDefault(x => x.ID == appID).ProcedureDescription;
            DiagnosisTb.Text ="Диагноз: " + Connection.clinic.Appointments.FirstOrDefault(x => x.ID == appID).Diagnosis;
            TreatmentPlanTb.Text ="Лечение: " + Connection.clinic.Appointments.FirstOrDefault(x => x.ID == appID).TreatmentPlan;
            



        }
    }
}
