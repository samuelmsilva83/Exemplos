using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SystemPersonal.BLL.Exception;
using SystemPersonal.DAL;
using SystemPersonal.Entities;

namespace SystemPersonal.BLL
{
    public class AlunoBo
    {
        private AlunoDao _alunoDao;

        public List<Aluno> ObterTodosOsAlunos(String pesquisa)
        {
            _alunoDao = new AlunoDao();
            return _alunoDao.ConsultarTodosOsAlunos(pesquisa);
        }

        public void InserirNovoAluno(Aluno aluno)
        {

            _alunoDao = new AlunoDao();

            ValidarAluno(aluno);

            var linhasAfetadas = _alunoDao.InserirAluno(aluno);

            if(linhasAfetadas == 0)
            {
                throw new AlunoNaoCadastradoException();
            }
        }

        public void ValidarAluno(Aluno aluno)
        {
            if (string.IsNullOrWhiteSpace(aluno.Nome)  ||
                string.IsNullOrWhiteSpace(aluno.Email) ||
                string.IsNullOrWhiteSpace(aluno.DtNascimento) )
            {
                throw new AlunoInvalidoException();
            }
        }

        public int ObterQtdeDeAlunos()
        {
            _alunoDao = new AlunoDao();
            Int32 qtde_Alunos = _alunoDao.ConsultarQtdeDeAlunos();

            return qtde_Alunos;
        }

        public void AlterarStatusAluno(int id, String status)
        {
            _alunoDao = new AlunoDao();
            
            var linhasAfetadas = _alunoDao.AtualizaStatusAluno(id, status); 

            if (linhasAfetadas == 0)
            {
                throw new AlunoNaoAtualizadoException();
            }
        }

        public void ExcluirAluno(int id)
        {
            _alunoDao = new AlunoDao();

            var linhasAfetadas = _alunoDao.ExcluiAluno(id);

            if (linhasAfetadas == 0)
            {
                throw new AlunoNaoExcluidoException();
            }
        }

    }
}
