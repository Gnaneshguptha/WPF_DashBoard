using LoginForm.Models;
using LoginForm.View;
using System;
using System.Linq;
using System.Security;
using System.Security.Principal;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace LoginForm.ViewModel
{
    public class LoginViewModel :ViewModelBase
    {
        public int _userid;
        private Brush _errorMessageColor;
        private string _userName;
        private SecureString _password;
        private string _errorMessage;
        private bool _isViewVisible = true;
        /// <summary>
        /// commandsfor user actions 
        /// </summary>
        public ICommand LoginCommand { get; set; }
        public ICommand RecoverPasswordCommand { get; set; }
        public ICommand ShowPasswordCommand { get; set; }
        public ICommand RememberPasswordCommand { get; set; }

        public LoginViewModel()
        {
            //relaycommand
            LoginCommand=new ViewModelCommand(ExecuteLoginCommand,CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(p => ExecuteRecoverPasswordCommand("", ""));
            // Subscribe to PropertyChanged event to clear error message when UserName or Password changes
            PropertyChanged += (sender, e) =>
            {
                if (e.PropertyName == nameof(UserName) || e.PropertyName == nameof(Password))
                {
                    ErrorMessage = "";
                }
            };
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool validaData;
            if(string.IsNullOrWhiteSpace(UserName)||UserName.Length<3||Password==null||Password.Length<3)
            {
                validaData=false;
            }
            else
            {
                validaData=true;
            }
            return validaData;
        }

        private void ExecuteLoginCommand(object obj)
        {
            var _dbcontext = new WpfCrudContext();
            string enteredPassword = SecureStringToString(Password);
            var usr = _dbcontext.UserDetails.FirstOrDefault(p => p.UserName==UserName );

            if (usr!=null &&usr.Password==enteredPassword)
            {
                ErrorMessage = "Login Sucessfully";
                ErrorMessageColor = Brushes.Green;
                Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(usr.FirstName), null);
                if (obj is System.Windows.Window currentWindow)
                {
                    mainView mainview = new mainView();
                    mainview.Show();
                    currentWindow.Close();
                }
            }
            else
            {
                ErrorMessage = "* Unsucessfull login Try again";
                ErrorMessageColor = Brushes.Red;
            }
        }
        private string SecureStringToString(SecureString secureString)
        {
            IntPtr unmanagedString = IntPtr.Zero;
            try
            {
                unmanagedString = System.Runtime.InteropServices.Marshal.SecureStringToGlobalAllocUnicode(secureString);
                return System.Runtime.InteropServices.Marshal.PtrToStringUni(unmanagedString);
            }
            finally
            {
                System.Runtime.InteropServices.Marshal.ZeroFreeGlobalAllocUnicode(unmanagedString);
            }
        }
        private void ExecuteRecoverPasswordCommand(string username,string email)
        {
            throw new NotSupportedException();
        }

        //property change //
        public Brush ErrorMessageColor
        {
            get => _errorMessageColor;
            set
            {
                _errorMessageColor = value;
                OnPropertyChanged(nameof(ErrorMessageColor));
            }
        }
        public string UserName
        {
            get => _userName;
            set
            {
                _userName = value;
                OnPropertyChanged(nameof(UserName));
            }
        }
        public SecureString Password { get => _password;
            set {
                _password = value;
                OnPropertyChanged(nameof(Password));
                }
        }
        public string ErrorMessage { get => _errorMessage; set {
                _errorMessage = value; 
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible { get => _isViewVisible; set {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }
    }
}
