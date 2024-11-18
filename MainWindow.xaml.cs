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

namespace Tasks_Management_System
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public TasksMSEntities3 _Context = new TasksMSEntities3();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            var User = new User();
             User= _Context.Users.FirstOrDefault(U=>U.UserName == Nametxtbox.Text && U.UserPass==Passtxtbox.Password);
            if(User!=null&&User.RoleID==100)
            {
                MessageBox.Show("Welcome Employee!");
                ViewTasks viewtask = new ViewTasks();
                viewtask.Show();
                this.Close();
            }
            else if (User != null && User.RoleID == 200)
            {
                MessageBox.Show("Welcome Manager!");
                UserManagement userManagement = new UserManagement();
                userManagement.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("User not found, Try again","Error",MessageBoxButton.OK,MessageBoxImage.Error);
                Nametxtbox.Text = "";
                Passtxtbox.Password = "";
            }
        }
    }
}
