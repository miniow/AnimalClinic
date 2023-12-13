using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace AnimalClinic.ViewModels
{
    public class HomeViewModel: ViewModelBase
    {
        public ICommand ShowVetView { get; }


        public HomeViewModel()
        {

            ShowVetView = new ViewModelCommand(ExecuteShowVetView);
        }

        private void ExecuteShowVetView(object obj)
        {
            MainViewModel.OnShowVetView();
        }
    }
}
