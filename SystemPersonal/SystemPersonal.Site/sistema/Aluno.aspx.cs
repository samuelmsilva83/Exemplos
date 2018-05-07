using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemPersonal.BLL;
using SystemPersonal.Entities;

public partial class sistema_Aluno : System.Web.UI.Page
{
    private AlunoBo _alunoBo;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            CarregarAlunos();
        }
    }

    protected void BtnSalvar_Click(object sender, EventArgs e)
    {

        var aluno = new Aluno();

//        aluno.Nome = TxtNome.Text;
        TextBox t = this.Page.FindControl("TxtNome") as TextBox;
        aluno.Nome = t.Text;

        //aluno.Email = TxtEmail.Text;
        //aluno.DtNascimento = TxtDtNascimento.Text;

        //if (RadioMasculino.Checked) 
        //{
        //    aluno.Genero = "M";
        //}
        //else
        //{
        //    aluno.Genero = "F";
        //}

        // aluno.Telefone = TxtTelefone.Text;
        // aluno.Celular = Txtcelular.Text;
        //aluno.Observacao = TxtAreaObservacao.Value;

    }


    protected void CvDtNascimento_ServerValidate(object source, ServerValidateEventArgs args)
    {

        if (DateTime.TryParse(args.Value, out DateTime result))
            args.IsValid = true;
        else
            args.IsValid = false;

    }

    private void CarregarAlunos()
    {

       

       // _alunoBo = new AlunoBo();
        //var alunos = _alunoBo.ObterTodosOsAlunos();

    }







}
