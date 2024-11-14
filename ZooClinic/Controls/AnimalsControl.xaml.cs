using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.ConstrainedExecution;
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
    /// Логика взаимодействия для AnimalsControl.xaml
    /// </summary>
    public partial class AnimalsControl : UserControl
    {
        private Animals anim;
        public AnimalsControl(Animals animals)
        {
            InitializeComponent();
            anim = animals;
           var animalId = Connection.clinic.Animals.FirstOrDefault(x => x.ID == anim.ID).ID;
            NameTb.Text = Connection.clinic.Animals.FirstOrDefault(x => x.ID == animalId).Name;
            var breed = Connection.clinic.Breeds.Where(x => x.ID == animalId);
            BreedTb.Text = Connection.clinic.Breeds.FirstOrDefault(x => x.ID == anim.BreedID).BreedName;
            OwnerTb.Text = "Владелец: " + Connection.clinic.Owners.FirstOrDefault(x => x.ID == animalId).LastName + " " + Connection.clinic.Owners.FirstOrDefault(x => x.ID == animalId).FirstName;
            AgeTb.Text = "Возраст: " + Convert.ToString(Connection.clinic.Animals.FirstOrDefault(x => x.ID == animalId).Age) + " год(а)";
            MedicalRecordTb.Text = Connection.clinic.Animals.FirstOrDefault(x => x.ID == animalId).MedicalRecord;



        }
    }
}
