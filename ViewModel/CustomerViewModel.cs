using LoginForm.Models;
using LoginForm.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace LoginForm.ViewModel
{
    public class CustomerViewModel:ViewModelBase
    {
        private string _fname;
        private readonly WpfCrudContext  _context;
        private ObservableCollection<Customer> _customers;

        public ObservableCollection<Customer> Customers
        {
            get => _customers;
            set
            {
                _customers = value;
                OnPropertyChanged(nameof(Customers));
            }
        }

        public string Fname { get => _fname; set { 
                _fname = value;
                OnPropertyChanged(nameof(Fname));
            }
        }
        public ICommand SearchByNameCommand { get; }
        public ICommand ClrCommand { get; }
        public CustomerViewModel()
        {
            _context=new WpfCrudContext();
            SearchByNameCommand = new ViewModelCommand(ExecuteSerachCommand, canExecuteSearchCommand);
            ClrCommand = new ViewModelCommand(ExecuteClrCommand, CanExecuteClrCommand);
            LoadCustomers();
        }

        private bool CanExecuteClrCommand(object obj)
        {
            return true;
        }

        private void ExecuteClrCommand(object obj)
        {
            Fname = "";
            LoadCustomers();
        }

        private bool canExecuteSearchCommand(object obj)
        {
            return true;
        }

        private void ExecuteSerachCommand(object obj)
        {
            var data = _customers.Where(p => p.FirstName == Fname);
            if(data!=null)
            {
                var filteredCustomers = _context.Customers.Where(p => p.FirstName == Fname).ToList();
                Customers = new ObservableCollection<Customer>(filteredCustomers);

            }
        }

        private void LoadCustomers()
        {
            var customerData = _context.Customers.ToList();
            Customers=new ObservableCollection<Customer>(customerData);
        }
    }
}
