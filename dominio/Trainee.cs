using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Trainee
    {
        public int Id { get; set; }
        private string email;
        public string Email
        {
            get { return email; }
            set
            {
                if (value != "")
                    email = value;
                else
                    throw new Exception("email vacío en el dominio...");
            }
        }

        public string Pass { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string ImagenPerfil { get; set; }
        public bool Admin { get; set; }
    }
}
