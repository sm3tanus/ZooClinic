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
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void EnterBt_Click(object sender, RoutedEventArgs e)
        {
            List<Veterinarians> veterinarians = Connection.clinic.Veterinarians.ToList();
            App.authUser = veterinarians.FirstOrDefault(i => i.Login == LoginTb.Text && i.Password == PasswordTb.Password);
            if (App.authUser != null)
            {
                NavigationService.Navigate(new MainMenuPage());
            }
            else
            {
                MessageBox.Show("Неверные данные!");
            }

        }
    }
}
