using LoginForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace LoginForm.ViewModel
{
    class UpdateViewModel:ViewModelBase
    {
        private readonly WpfCrudContext _context;
        private UserDetail _userDetail;
       
        public ICommand UpdateCommand { get; }
        public UpdateViewModel()
        {
            _context = new WpfCrudContext();
            UpdateCommand = new ViewModelCommand(ExecuteUpdateCommand, CanExecuteUpdateCommand);
            loadDetails();
        }
        public UserDetail UserDetail { get => _userDetail;
            set
            { _userDetail = value;
                OnPropertyChanged(nameof(UserDetail));
            } 
        }
        private void loadDetails()
        {
            var user=_context.UserDetails.FirstOrDefault(p => p.FirstName == Thread.CurrentPrincipal.Identity.Name);
            if(user!=null)
            {
                UserDetail = new UserDetail()
                {
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    Email = user.Email,
                    UserName = user.UserName
                };
            }
        }
        private bool CanExecuteUpdateCommand(object obj)
        {
            return true;
        }

        private void ExecuteUpdateCommand(object obj)
        {
            var user = _context.UserDetails.FirstOrDefault(p => p.FirstName == Thread.CurrentPrincipal.Identity.Name);
            if(user!=null)
            {
                user.FirstName = UserDetail.FirstName;
                user.LastName = UserDetail.LastName;
                user.Email = UserDetail.Email;
                user.UserName=UserDetail.UserName;
                _context.SaveChanges();
                MessageBox.Show("Details Updated Sucessfully", "Done");
            }
            else
            {
                MessageBox.Show("Details Not Updated Sucessfully", "Error");
            }

        }




    }
}
