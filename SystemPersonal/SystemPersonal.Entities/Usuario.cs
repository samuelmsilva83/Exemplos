using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemPersonal.Entities
{
    public class Usuario:IntId
    {
        public String NomeUsuario { get; set; }

        public String Senha { get; set; }

        public String Perfil { get; set; }
    }
}
