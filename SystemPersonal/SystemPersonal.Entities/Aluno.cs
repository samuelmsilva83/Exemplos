using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemPersonal.Entities
{
    public class Aluno:IntId
    {

        public int Id { get; set; }

        public String Nome { get; set; }

        public String DtNascimento { get; set; }

        public String Email { get; set; }

        public String Genero { get; set; }

        public String Telefone { get; set; }

        public String Celular { get; set; }

        public String Observacao { get; set; }

        public String Status { get; set; }

        public String ClasseStatus { get; set; }

        public String ToolTip { get; set; }

        public String DtCadastro { get; set; }

        public int UsuarioCadastro { get; set; }
    }
}
