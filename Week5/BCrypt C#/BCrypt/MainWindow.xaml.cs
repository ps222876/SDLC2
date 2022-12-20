using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
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

namespace BCrypt
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private string salt;
        private string hash;

        private void btNewPass_Click(object sender, RoutedEventArgs e)
        {
            salt = BCrypt.Net.BCrypt.GenerateSalt();
            hash = BCrypt.Net.BCrypt.HashPassword(tbPassword.Text, salt);
            HashLabel.Content = "hash: " + hash;
        }

        private void btCount_Click(object sender, RoutedEventArgs e)
        {
            bool correct = BCrypt.Net.BCrypt.Verify(tbPassword.Text, hash);
            if (correct)
            {
                tbCorGreen.Visibility = Visibility.Visible;
                tbCorRed.Visibility = Visibility.Collapsed;
            }
            else
            {
                tbCorRed.Visibility = Visibility.Visible;
                tbCorGreen.Visibility = Visibility.Collapsed;
            }
        }
    }
}
