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

namespace ZooClinic.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainMenuPage.xaml
    /// </summary>
    public partial class MainMenuPage : Page
    {
        public MainMenuPage()
        {
            InitializeComponent();
            if (App.authUser.IdSpecialty != 1)
            {
                addAnimal.Visibility = Visibility.Hidden;
                addVeterinar.Visibility = Visibility.Hidden;
                addOwner.Visibility = Visibility.Hidden;
            }
        }

        private void addAnimal_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddAnimalPage());
        }

        private void addOwner_Click(object sender, RoutedEventArgs e)
        {

        }

        private void addVeterinar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegisterPage());
        }

        private void addAppointment_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddAppoinpmentPage());

        }

        private void statistic_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Statisctic());

        }
    }
}
