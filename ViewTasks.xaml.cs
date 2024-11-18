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
    /// Interaction logic for ViewTasks.xaml
    /// </summary>
    public partial class ViewTasks : Window
    {
        public TasksMSEntities3 _Context = new TasksMSEntities3();
        public Task _SelectedTask;
        public User user;
        public ViewTasks()
        {
            InitializeComponent();
            LoadTasks();
        }
        public void ClearInputs()
        {
            TaskTitletxtbox.Text = "";
            TaskDescriptxtbox.Text = "";
            TaskStatustxtbox.Text = "";
        }
        public void LoadTasks()
        {
            PendingtaskGrid.ItemsSource = _Context.Tasks.ToList();
            CompletedTaskGrid.ItemsSource=_Context.CompletedTasks.ToList();
        }

        private void SaveStatueBtn_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrEmpty(TaskTitletxtbox.Text) ||
               String.IsNullOrEmpty(TaskDescriptxtbox.Text) ||
               String.IsNullOrEmpty(TaskStatustxtbox.Text))
            {
                MessageBox.Show("You cannot leave any field \n of the task info as empty.");       
            }
            else
            {
                var Completetask = new CompletedTask
                {
                    TaskTitle = TaskTitletxtbox.Text,
                    TaskDescription = TaskDescriptxtbox.Text,
                    TaskStatus = TaskStatustxtbox.Text,
                    DueDate = DateTime.Now,
                };
                _Context.CompletedTasks.Add(Completetask);
                _Context.SaveChanges();
                LoadTasks();
                ClearInputs();
                TaskStatustxtbox.Text = "Completed";
            }
        }

        private void PendingTasksSelection(object sender, SelectionChangedEventArgs e)
        {
            if(PendingtaskGrid.SelectedItem is Task _SelectedTask)
            {
                TaskTitletxtbox.Text=_SelectedTask.TaskTitle;
                TaskDescriptxtbox.Text = _SelectedTask.TaskDescription;
              
            }
        }
    }
}
