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
using ZooClinic.Controls;
using ZooClinic.DB;

namespace ZooClinic.Pages
{
    /// <summary>
    /// Логика взаимодействия для AnimalsListPage.xaml
    /// </summary>
    public partial class AnimalsListPage : Page
    {
        public AnimalsListPage()
        {
            InitializeComponent();
            var animals = Connection.clinic.Animals.ToList();
            UpdatePage(animals);
        }
        public void UpdatePage(List<Animals> clientServices)
        {
            ServiceWpar.Children.Clear();
            foreach (var item in clientServices)
            {
                ServiceWpar.Children.Add(new Controls.AnimalsControl(item));
            }
        }
    }
}
