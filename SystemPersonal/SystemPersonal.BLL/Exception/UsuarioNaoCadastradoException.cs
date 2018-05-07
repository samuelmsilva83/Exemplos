using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemPersonal.BLL.Exception
{
    public class UsuarioNaoCadastradoException : System.Exception
    {
        public UsuarioNaoCadastradoException()
        {

        }

        public UsuarioNaoCadastradoException(string message) : base(message)
        {

        }

        public UsuarioNaoCadastradoException(string message, System.Exception inner) : base(message, inner)
        {

        }

    }
}
