using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemPersonal.BLL.Exception
{
    public class AlunoNaoExcluidoException : System.Exception
    {
        public AlunoNaoExcluidoException()
        {

        }

        public AlunoNaoExcluidoException(string message) : base(message)
        {

        }

        public AlunoNaoExcluidoException(string message, System.Exception inner) : base(message, inner)
        {

        }

    }
}
