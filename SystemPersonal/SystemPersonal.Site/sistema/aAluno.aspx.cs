using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemPersonal.BLL;
using SystemPersonal.Entities;

public partial class sistema_aAluno : System.Web.UI.Page
{
    private AlunoBo _alunoBo;

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void BtnSalvar_Click(object sender, EventArgs e)
    {

        var aluno = new Aluno();
        _alunoBo = new AlunoBo();

        aluno.Nome = TxtNome.Text;
        aluno.Email = TxtEmail.Text;
        aluno.DtNascimento = TxtDtNascimento.Text;

        if (RadioMasculino.Checked)
        {
            aluno.Genero = "M";
        }
        else
        {
            aluno.Genero = "F";
        }

        aluno.Telefone = TxtTelefone.Text;
        aluno.Celular = Txtcelular.Text;
        aluno.Observacao = TxtAreaObservacao.Text;

        aluno.DtCadastro = DateTime.Now.ToString("dd/MM/yyyy");
        aluno.UsuarioCadastro = Convert.ToInt32(Session["UsuarioId"]);
        aluno.Status = "A";

        try
        {
            _alunoBo.InserirNovoAluno(aluno);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('msg qualquer');</script>");
        }
        catch
        {

        }

    }

    protected void ServerButton_Click(object sender, EventArgs e)
    {


        ClientScript.RegisterStartupScript(this.GetType(), "key", "launchModal();", true);
    }

}
