using FontAwesome.Sharp;
using LoginForm.Models;
using LoginForm.View;
using System;
using System.Linq;
using System.Threading;
using System.Windows;
using System.Windows.Input;

namespace LoginForm.ViewModel
{
    class MainViewModel:ViewModelBase
    {

        private UserDetail _curretUserAccount;
        private readonly WpfCrudContext _context;
        private ViewModelBase _currentViewModel;
        private string _caption;
        private IconChar _icon;
        public UserDetail CurretUserAccount { get => _curretUserAccount;
            set { 
                _curretUserAccount = value;
                OnPropertyChanged(nameof(CurretUserAccount));
            }
        }
        public ViewModelBase CurrentViewModel { get => _currentViewModel; 
            set { 
                _currentViewModel = value;
                OnPropertyChanged(nameof(CurrentViewModel));
            }
        }
        public string Caption { get => _caption; set { 
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }
        public IconChar Icon { get => _icon; set {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            } }

        //->Commands For user interaction in main windows wpf
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowCustomerViewCommand { get; }
        public ICommand ShowUserDetailsCommand { get; }
        public ICommand ShowUpdateDetailsCommand { get; }

        public MainViewModel()
        {
            _context=new WpfCrudContext();
            ShowHomeViewCommand = new ViewModelCommand(ExecuteHomeCommand, canExecuteHomeCommand);
            ShowCustomerViewCommand = new ViewModelCommand(ExecuteCustomerCommand, canExecuteCustomerCommand);
            ShowUserDetailsCommand = new ViewModelCommand(ExecuteUserDetailsCommand, CanExecuteUserDetailsCommand);
            ShowUpdateDetailsCommand = new ViewModelCommand(ExcuteUpdateCommand, CanExcuteUpdateCommand);
            LoadCurentUserData();
            //default view
            ExecuteHomeCommand(null);
        }

        private bool CanExcuteUpdateCommand(object obj)
        {
            return true;
        }

        private void ExcuteUpdateCommand(object obj)
        {
            CurrentViewModel = new UpdateViewModel();

        }

        private bool CanExecuteUserDetailsCommand(object obj)
        {
            return true;
        }

        private void ExecuteUserDetailsCommand(object obj)
        {
            CurrentViewModel = new UserDetailsViewModel();
        }

        private bool canExecuteCustomerCommand(object obj)
        {
            return true;
        }

        private void ExecuteCustomerCommand(object obj)
        {
           
            //nothing but current child view
            CurrentViewModel = new CustomerViewModel();
            Caption = "Customers";
            Icon = IconChar.UserGroup;
        }

        private bool canExecuteHomeCommand(object obj)
        {
            return true;
        }

        private void ExecuteHomeCommand(object obj)
        {
            //notifing the ui by current view model
            CurrentViewModel = new HomeViewModel();
            Caption = "Dashboard";
            Icon = IconChar.Home;
        }

        private void LoadCurentUserData()
        {
            var user = _context.UserDetails.FirstOrDefault(p => p.FirstName == Thread.CurrentPrincipal.Identity.Name);
            if (user!=null)
            {
                CurretUserAccount = new UserDetail()
                {
                    FirstName = user.FirstName,
                    LastName=user.LastName,
                    Email=user.Email,
                    UserName=user.UserName
                    
                };
            }
            else
            {
                MessageBox.Show("Invalid User","not a valid user");
                Application.Current.Shutdown();
            }
        }
    }
}
