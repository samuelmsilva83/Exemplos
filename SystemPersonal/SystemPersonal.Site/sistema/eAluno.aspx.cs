using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sistema_eAluno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string idAluno = Request.QueryString["idAluno"];

        if (idAluno != null)
        {
            //TextBox1.Text = idAluno;
        }
        else
        {
            Response.Write("Parametro nao recebidi");
        }


    }

    protected void BtnSalvar_Click(object sender, EventArgs e)
    {


    }

}