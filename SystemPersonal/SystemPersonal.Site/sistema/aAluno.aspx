<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" CodeFile="aAluno.aspx.cs" Inherits="sistema_aAluno" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Main content -->
    <div class="main-content">

        <ol class="breadcrumb breadcrumb-2">
            <li><a href="webis.aspx"><i class="fa fa-home"></i>Home</a></li>
            <li><a href="lAluno.aspx">Alunos</a></li>
            <li class="active"><strong>Novo Aluno</strong></li>
        </ol>


        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default animated fadeInUp go">
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
            </div>
        </div>


        <% Server.Execute("rodape.aspx");%>
    </div>
    <!-- /main content -->

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>

            <asp:Button ID="btnPopUp" runat="server" Text="MOSTRA" Width="262px" />

            <cc1:ModalPopupExtender ID="btnPopUp_ModalPopupExtender1" runat="server" TargetControlID="btnPopUp" PopupControlID="PanelModal"></cc1:ModalPopupExtender>

            <asp:Panel ID="PanelModal" runat="server" style="display:none">
                

                <div id="MsgOk" class="modal fade" tabindex="-1" role="dialog" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                            <p>OK</p>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton ID="btnExcluirAluno" CssClass="btn btn-primary" runat="server" Text="OK">
                            </asp:LinkButton>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /exclui -->


            </asp:Panel>
        </ContentTemplate>

    </asp:UpdatePanel>
 
        <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
</asp:Content>

