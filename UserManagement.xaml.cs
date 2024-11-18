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
using System.Windows.Shapes;

namespace Tasks_Management_System
{
    /// <summary>
    /// Interaction logic for UserManagement.xaml
    /// </summary>
    public partial class UserManagement : Window
    {
        public  TasksMSEntities4 _Context = new TasksMSEntities4();
        public Employee _SelectedEmployee;
        public UserManagement()
        {
            InitializeComponent();
            LoadEmps();
        }
        public void LoadEmps()
        {
            ManagementGrid.ItemsSource = _Context.Employees.ToList();
        }
        public void ClearInputs()
        {
            TaskTitletxtbox.Text = "";
            TaskDescriptxtbox.Text = "";
            TaskStatustxtbox.Text = "";
            EmpNametxtbox.Text = "";
        }
        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
           if (String.IsNullOrEmpty(TaskTitletxtbox.Text) ||
               String.IsNullOrEmpty(TaskDescriptxtbox.Text) ||
               String.IsNullOrEmpty(TaskStatustxtbox.Text)||
               String.IsNullOrEmpty(EmpNametxtbox.Text))
           {
                MessageBox.Show("You cannot leave any field \n of the task info as empty.");
           }
            else
            {
                var Employee = new Employee()
                {
                    TaskTitle = TaskTitletxtbox.Text,
                    TaskDescription = TaskDescriptxtbox.Text,
                    TaskStatus = TaskStatustxtbox.Text,
                    Emp_Name = EmpNametxtbox.Text
                };
                _Context.Employees.Add(Employee);
                _Context.SaveChanges();
                LoadEmps();
                ClearInputs();

            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ManagementGrid.SelectedItem is Employee _SelectedEmployee)
            {
                _SelectedEmployee.TaskTitle = TaskTitletxtbox.Text;
                _SelectedEmployee.TaskDescription=TaskDescriptxtbox.Text;
                _SelectedEmployee.TaskStatus = TaskStatustxtbox.Text;
                _SelectedEmployee.Emp_Name = EmpNametxtbox.Text;
                _Context.SaveChanges();
                LoadEmps();
                MessageBox.Show("Data updated!");
                
            }
            else
            {
                MessageBox.Show("Select an employee to update");
            }
        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ManagementGrid.SelectedItem is Employee _SelectedEmployee)
            {
                _Context.Employees.Remove(_SelectedEmployee);
                _Context.SaveChanges();
                LoadEmps();
                MessageBox.Show("Employee Deleted!");
            }
            else
            {
                MessageBox.Show("Select an employee to delete");
            }
        }

        private void DatagridSelection(object sender, SelectionChangedEventArgs e)
        {
            if(ManagementGrid.SelectedItem is Employee _SelectedEmployee)
            {
                TaskTitletxtbox.Text=_SelectedEmployee.TaskTitle;
                TaskDescriptxtbox.Text=_SelectedEmployee.TaskDescription;
                TaskStatustxtbox.Text = _SelectedEmployee.TaskStatus;
                EmpNametxtbox.Text = _SelectedEmployee.Emp_Name;
            }
        }
    }
}
