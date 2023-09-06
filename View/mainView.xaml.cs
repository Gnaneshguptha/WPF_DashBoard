
using System.Windows;
using System.Windows.Input;
using System.Runtime.InteropServices;
using System;
using System.Xml.Linq;
using System.Windows.Interop;

namespace LoginForm.View
{

    public partial class mainView : Window
    {
        public mainView()
        {
            InitializeComponent();
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
        }
        
        
        //for draging the windows

        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, int wMsg, int wParam, int lParam);
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                WindowInteropHelper helper = new WindowInteropHelper(this);
                SendMessage(helper.Handle, 161, 2, 0);
            }
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
        
        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            if(this.WindowState== WindowState.Normal)
            {
            this.WindowState = WindowState.Maximized;
            }
            else
            {
                this.WindowState=WindowState.Normal;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (DropdownPopup.IsOpen)
            {
                DropdownPopup.IsOpen = false;
            }
            else
            {
                DropdownPopup.IsOpen = true;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            LoginView login = new LoginView();
            login.Show();
            this.Close();
        }
    }
}
