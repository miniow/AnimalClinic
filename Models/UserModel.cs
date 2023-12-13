using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;

namespace AnimalClinic.Models
{
    public class UserModel
    {
        public string Id { get; set; }
        public SecureString Password { get; set; }
        public string Name { get; set; }
        public string SureName { get; set; }
        public string Email { get; set; }
        public byte[] Picture { get; set; }
    }
}
