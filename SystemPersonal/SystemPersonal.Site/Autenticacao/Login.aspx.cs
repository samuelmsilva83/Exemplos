using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemPersonal.BLL.Autenticação;
using SystemPersonal.BLL.Exception;

public partial class Autenticação_Login : System.Web.UI.Page
{
    private LoginBo _loginBo;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        _loginBo = new LoginBo();

        var nomeUsuario = TxtUsuario.Text;
        var senha = TxtSenha.Text;

        try
        {
            var usuario = _loginBo.ObterUsuarioParaLogar(nomeUsuario, senha);

            FormsAuthentication.RedirectFromLoginPage(nomeUsuario, false);
            Session.Timeout = 30;
            Session["UsuarioId"] = usuario.Id;
            Session["UsuarioNome"] = usuario.NomeUsuario;
            Session["Perfil"] = usuario.Perfil;
        }
        catch (UsuarioNaoCadastradoException)
        {
            LblMensagem.Text = "Usuario nao cadastrado";
        }
        catch (Exception)
        {
            LblMensagem.Text = "Erro no sistema"; ;
        }

    }
}