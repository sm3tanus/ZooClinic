using LiveCharts;
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
    /// Логика взаимодействия для Statisctic.xaml
    /// </summary>
    public partial class Statisctic : Page
    {
        public Statisctic()
        {
            InitializeComponent();
            List<Animals> cats = Connection.clinic.Animals.Where(i => i.Breeds.SpeciesID == 1).ToList();
            List<Animals> dogs = Connection.clinic.Animals.Where(i => i.Breeds.SpeciesID == 2).ToList();
            List<Animals> another = Connection.clinic.Animals.Where(i => i.Breeds.SpeciesID != 1 && i.Breeds.SpeciesID != 2).ToList();

            DataContext = new
            {
                Cats = new ChartValues<double> { cats.Count() },
                Dogs = new ChartValues<double> { dogs.Count() }, 
                Birds = new ChartValues<double> { another.Count() }
            };
        }
    }
}
