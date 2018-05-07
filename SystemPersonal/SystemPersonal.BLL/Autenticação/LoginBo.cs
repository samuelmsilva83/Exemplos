using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SystemPersonal.BLL.Exception;
using SystemPersonal.DAL;
using SystemPersonal.Entities;

namespace SystemPersonal.BLL.Autenticação
{
    public class LoginBo
    {
        private UsuarioDao _usuarioDao;

        public Usuario ObterUsuarioParaLogar(string nomeUsuario, string senha)
        {
            _usuarioDao = new UsuarioDao();

            var usuario = _usuarioDao.ConsultaUsuario(nomeUsuario, senha);
            if(usuario == null)
            {
                throw new UsuarioNaoCadastradoException();
            }
            else
            {
                return usuario;
            }
        }
        
    }
}
