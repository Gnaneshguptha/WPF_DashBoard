using LoginForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoginForm.ViewModel
{
    class UserDetailsViewModel: ViewModelBase
    {
        public readonly WpfCrudContext _context;
        private UserDetail userdetails;

        public UserDetailsViewModel()
        {
            _context = new WpfCrudContext();
            LoadUserdata();
        }

        public UserDetail Userdetails {
            get => userdetails;
            set {
                userdetails = value;
                OnPropertyChanged(nameof(Userdetails));
            } 
        }

        private void LoadUserdata()
        {

            var user = _context.UserDetails.FirstOrDefault(p => p.FirstName == Thread.CurrentPrincipal.Identity.Name);
            if (user != null)
            {
                Userdetails = new UserDetail()
                {
                    Id = user.Id,
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    Email = user.Email,
                    UserName = user.UserName
                };
            }
            else
            {
                MessageBox.Show("User not found", "Please check again");
            }
        }

    }
}
