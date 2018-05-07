using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemPersonal.BLL.Exception
{
    public class AlunoNaoAtualizadoException : System.Exception
    {
        public AlunoNaoAtualizadoException()
        {

        }

        public AlunoNaoAtualizadoException(string message) : base(message)
        {

        }

        public AlunoNaoAtualizadoException(string message, System.Exception inner) : base(message, inner)
        {

        }

    }
}
