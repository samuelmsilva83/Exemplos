using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemPersonal.BLL;
using SystemPersonal.Entities;

public partial class sistema_teste : System.Web.UI.Page
{
    private AlunoBo _alunoBo;
    int paginaAtual;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ViewState["pagina"] = 0;
        }
        CarregarAlunos();
        CarregarPaginas();
//        FillDados();
    }

    private void CarregarAlunos()
    {
        _alunoBo = new AlunoBo();
        var alunos = _alunoBo.ObterTodosOsAlunos("1");

       // RepeaterAlunos.DataSource = _alunoBo.ObterTodosOsAlunos();
       // RepeaterAlunos.DataBind();

        paginaAtual = Convert.ToInt32(ViewState["pagina"]);

        PagedDataSource pgds = new PagedDataSource();
        //Seta a fonte de dados do objeto de paginação como a nossa lista de objetos
        pgds.DataSource = _alunoBo.ObterTodosOsAlunos("1"); ;

        //Permite a paginação do objeto
        pgds.AllowPaging = true;

        //Seta a pagina atual do objeto como sendo nosso ViewState de pagina.
        pgds.CurrentPageIndex = paginaAtual;

        //Seta a quantidade de registros por página
        pgds.PageSize = Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);

        //Seta a visibilidade do botão proximo e anterior de acordo com a primeira ou ultima pagina
        LnkBtnAnterior.Enabled = pgds.IsFirstPage ? false : true;
        LnkBtnProximo.Enabled = !pgds.IsLastPage;

        //Seta a fonte de dados do repeater como o nosso objeto de paginação.
        RepeaterAlunos.DataSource = pgds;
        RepeaterAlunos.DataBind();

        ViewState["pagina"] = paginaAtual;
    }

    private void CarregarPaginas()
    {
        _alunoBo = new AlunoBo();
        Int32 qtdeAlunos = _alunoBo.ObterQtdeDeAlunos();

        Int32 qtdePaginas = qtdeAlunos / Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);
        Int32 resto = qtdeAlunos % Convert.ToInt32(DropDownListQtdeRegistros.SelectedValue);

        if(resto > 0)
        {
            qtdePaginas += 1;
        }

        var classe = "";
        //LiteralPaginas.Text = "";
        var paginaComp = paginaAtual + 1;

        RepeaterPaginas.DataSource = new List<Pagina>
            {
                new Pagina { numeroPagina = 1, classe = "paginate_button active"},
                new Pagina { numeroPagina = 2, classe = "paginate_button"},
                new Pagina { numeroPagina = 3, classe = "paginate_button"},
                new Pagina { numeroPagina = 4, classe = "paginate_button"},
                new Pagina { numeroPagina = 5, classe = "paginate_button"}
                
        };
        RepeaterPaginas.DataBind();

        for (int i = 1; i <= qtdePaginas; i++)
        {
            if (i == paginaComp)
            {
                classe = "paginate_button active";
            }
            else
            {
                classe = "paginate_button";
            }

        }

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
        }
        catch
        {

        }
        
    }


    protected void LnkBtnAnterior_Click(object sender, EventArgs e)
    {




    }

    protected void LnkBtnProximo_Click(object sender, EventArgs e)
    {




    }

    protected void btnPagina_Click(object sender, EventArgs e)
    {



        

    }

    protected void RepeaterPaginas_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "AddToCart")
        {
            // Add code here to add the item to the shopping cart.
            // Use the value of e.Item.ItemIndex to retrieve the data 
            // item in the control.
        }

    }

    protected void repeaterImagens_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {


        

    }

    protected void Teste(object source, RepeaterCommandEventArgs e)
    {


        if (e.CommandName == "AddToCart")
        {
            // Add code here to add the item to the shopping cart.
            // Use the value of e.Item.ItemIndex to retrieve the data 
            // item in the control.
        }


    }
}