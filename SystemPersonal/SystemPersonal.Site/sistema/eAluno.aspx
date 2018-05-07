<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" CodeFile="eAluno.aspx.cs" Inherits="sistema_eAluno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/entypo.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/animations.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/mouldifi-core.css" rel="stylesheet" />
    <link href="../css/mouldifi-forms.css" rel="stylesheet" />
    <link href="../css/jquery.dataTables.css" rel="stylesheet" />
    <link href="../css/buttons.dataTables.css" rel="stylesheet" />
    <link href="../css/systemPersonal.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



        <!-- Main content -->
    <div class="main-content">

          <div class="row">
            <div class="col-md-12 animatedParent animateOnce z-index-50">
                <div class="tabs-container animated fadeInUp go">
                    <ul class="nav nav-tabs">
                        <li class="active"><a aria-expanded="true" href="#lista" data-toggle="tab"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;&nbsp;Lista de alunos</a></li>
                        <li><a aria-expanded="false" href="#adicionar" data-toggle="tab"><i class="fa fa-plus"></i>&nbsp;&nbsp;Adicionar Aluno</a></li>
                    </ul>
                    <div class="tab-content">

                        
                        

                        <div class="tab-pane" id="adicionar">
                            <div class="panel-body">

                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">*Nome</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="TxtNome" class="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RfvNome" ControlToValidate="TxtNome" runat="server" ErrorMessage="Nome é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">*E-mail</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RfvEmail" ControlToValidate="TxtEmail" runat="server" ErrorMessage="Email é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RevEmail" Style="margin-left: -134px" ControlToValidate="TxtEmail" runat="server" ErrorMessage="Email inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">*Data de Nascimento</label>
                                        <div class="col-sm-3">
                                            <div id="year-view" class="input-group date">
                                                <asp:TextBox ID="TxtDtNascimento" class="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RfvDtNascimento" ControlToValidate="TxtDtNascimento" runat="server" ErrorMessage="Data de nascimento é obrigatória" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RevDtNascimento" Style="margin-left: -193px" ControlToValidate="TxtDtNascimento" runat="server" ErrorMessage="Data de nascimento inválida" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}$" ForeColor="#CC0000" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Sexo</label>
                                        <div class="col-sm-10">
                                            <div class="radio">
                                                <label>
                                                    <asp:RadioButton ID="RadioMasculino" name="radioGenero" runat="server" Checked="True" GroupName="radioGenero"></asp:RadioButton>
                                                    Masculino
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <asp:RadioButton ID="RadioFeminino" name="radioGenero" runat="server" Checked="false" GroupName="radioGenero"></asp:RadioButton>
                                                    Feminino
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Telefone</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="TxtTelefone" data-mask="(99)99999-9999" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Celular</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="Txtcelular" data-mask="(99)99999-9999" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Observações</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="TxtAreaObservacao" runat="server" mode="multiline" Rows="5" Height="100" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-2">
                                            <asp:Button ID="BtnSalvar" Text="Salvar" class="btn btn-primary" runat="server" OnClick="BtnSalvar_Click" />
                                        </div>
                                    </div>


                                </div>
                                <!-- Fim form-horizontal  -->





                            </div>
                        </div>
                        <!-- tab-pane adicionar -->

                    </div>
                    <!-- tab-content -->
                </div>
                <!-- rtabs-container animated fadeInUp goow -->
            </div>
            <!-- col-md-12 animatedParent animateOnce z-index-50 -->
        </div>
        <!-- row -->

        <% Server.Execute("rodape.aspx");%>
    </div>
    <!-- /main content -->

</asp:Content>

