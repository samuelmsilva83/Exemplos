using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemPersonal.BLL;
using SystemPersonal.Entities;

public partial class sistema_webis : System.Web.UI.Page
{
    private AlunoBo _alunoBo;
    int paginaAtual;
    public int totalPaginas;
    public int qtdeRegistroPag;
    public int totalQtdeRegPag;
    public Boolean ehUltimaPag;
    public String classeBtnAnterior;
    public String classeBtnProximo;
    public String classeStatusAluno;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            ViewState["pagina"] = 0;
        }
        CarregarAlunos();
        CarregarPaginas();
    }

    private void CarregarAlunos()
    {
        _alunoBo = new AlunoBo();
        // var alunos = _alunoBo.ObterTodosOsAlunos(TxtPesquisa.Text);

        paginaAtual = Convert.ToInt32(ViewState["pagina"]);

        PagedDataSource pgds = new PagedDataSource();
        //Seta a fonte de dados do objeto de paginação como a nossa lista de objetos
        pgds.DataSource = _alunoBo.ObterTodosOsAlunos(TxtPesquisa.Text);

        //Permite a paginação do objeto
        pgds.AllowPaging = true;

        //Seta a pagina atual do objeto como sendo nosso ViewState de pagina.
        pgds.CurrentPageIndex = paginaAtual;

        //Seta a quantidade de registros por página
        pgds.PageSize = Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);

        //Seta a visibilidade do botão proximo e anterior de acordo com a primeira ou ultima pagina
        if (pgds.IsFirstPage)
        {
            LnkBtnAnterior.Enabled = false;
            classeBtnAnterior = "paginate_button previous disabled";
        }
        else
        {
            LnkBtnAnterior.Enabled = true;
            classeBtnAnterior = "paginate_button previous";
        }

        if (pgds.IsLastPage)
        {
            LnkBtnProximo.Enabled = false;
            classeBtnProximo = "paginate_button next disabled";
            ehUltimaPag = true;
        }
        else
        {
            LnkBtnProximo.Enabled = true;
            classeBtnProximo = "paginate_button next";
            ehUltimaPag = false;
        }

        //Seta a fonte de dados do repeater como o nosso objeto de paginação.
        RptAlunos.DataSource = pgds;
        RptAlunos.DataBind();

        //Seta valor para modal de alteração de status
        RptModalStatus.DataSource = pgds;
        RptModalStatus.DataBind();

        //Seta valor para modal de exclusão
        RptModalExcluir.DataSource = pgds;
        RptModalExcluir.DataBind(); 
        
        ViewState["pagina"] = paginaAtual;
    }

    private void CarregarPaginas()
    {
        _alunoBo = new AlunoBo();
        Int32 qtdeAlunos = _alunoBo.ObterQtdeDeAlunos();

        Int32 qtdePaginas = qtdeAlunos / Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);
        Int32 resto = qtdeAlunos % Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);

        if (resto > 0)
        {
            qtdePaginas += 1;

            if (ehUltimaPag)
            {
                qtdeRegistroPag = resto;
            }
            else
            {
                qtdeRegistroPag = Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);
            }
        }
        else
        {
            qtdeRegistroPag = Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);
        }

        // Carrega valores da tela
        totalPaginas = qtdePaginas;
        totalQtdeRegPag = Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);

        var paginaComp = paginaAtual + 1;
        var paginas = new List<Pagina>();

        for (int i = 1; i <= qtdePaginas; i++)
        {

            Pagina pagina = new Pagina();

            pagina.numeroPagina = i;

            if (i == paginaComp)
            {
                pagina.classe = "paginate_button active";
                pagina.habilitado = false;
            }
            else
            {
                pagina.classe = "paginate_button";
                pagina.habilitado = true;
            }

            paginas.Add(pagina);
        }

        Repeater1.DataSource = paginas;
        Repeater1.DataBind();

    }

    protected void LnkBtnAnterior_Click(object sender, EventArgs e)
    {

        ViewState["pagina"] = Convert.ToInt16(ViewState["pagina"]) - 1;
        CarregarAlunos();
        CarregarPaginas();

    }

    protected void LnkBtnProximo_Click(object sender, EventArgs e)
    {

        ViewState["pagina"] = Convert.ToInt16(ViewState["pagina"]) + 1;
        CarregarAlunos();
        CarregarPaginas();

    }


    protected void teste(object source, RepeaterCommandEventArgs e)
    {
        ViewState["pagina"] = Convert.ToInt32(e.CommandName) - 1;
        CarregarAlunos();
        CarregarPaginas();
    }

    protected void modalStatusAluno(object source, RepeaterCommandEventArgs e)
    {
        var status = "";
        switch (e.CommandName)
        {
            case "Ativar":
                status = "A";
                break;
            case "Desativar":
                status = "I";
                break;
        }
        _alunoBo = new AlunoBo();
        _alunoBo.AlterarStatusAluno(Convert.ToInt32(e.CommandArgument), status);

        ViewState["pagina"] = 0;
        CarregarAlunos();
        CarregarPaginas();
    }

    protected void modalExcluirAluno(object source, RepeaterCommandEventArgs e)
    {

        _alunoBo = new AlunoBo();
        _alunoBo.ExcluirAluno(Convert.ToInt32(e.CommandArgument));

        ViewState["pagina"] = 0;
        CarregarAlunos();
        CarregarPaginas();
    }

    protected void DropDownListQtdeRegistros_Changed(object sender, EventArgs e)
    {

        ViewState["pagina"] = 0;
        CarregarAlunos();
        CarregarPaginas();

    }

    protected void TxtPesquisa_TextChanged(object sender, EventArgs e)
    {

        ViewState["pagina"] = 0;
        CarregarAlunos();
        CarregarPaginas();

    }

    protected void editarAluno(object source, RepeaterCommandEventArgs e)
    {

        Server.Transfer("eAluno.aspx?idAluno=" + Convert.ToInt32(e.CommandArgument), true);

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

            ViewState["pagina"] = 0;
            CarregarAlunos();
            CarregarPaginas();
        }
        catch
        {

        }

    }


}