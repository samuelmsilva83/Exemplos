<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" EnableViewState="true" enableEventValidation="false" CodeFile="teste.aspx.cs" Inherits="sistema_teste" %>

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

    <link href="../css/bootstrap-colorpicker.css" rel="stylesheet" />
    <link href="../css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="../css/nouislider.css" rel="stylesheet" />
    <link href="../css/select2.css" rel="stylesheet" />

    <link href="../scss/_buttons.css" rel="stylesheet" />
    <link href="../scss/_global.css" rel="stylesheet" />
    <link href="../scss/_extra-pages.css" rel="stylesheet" />
    <link href="../scss/_filter.css" rel="stylesheet" />
    <link href="../scss/_footer.css" rel="stylesheet" />
    <link href="../scss/_forms.css" rel="stylesheet" />
    <link href="../scss/_icons.css" rel="stylesheet" />
    <link href="../scss/_input-groups.css" rel="stylesheet" />
    <link href="../scss/_labels.css" rel="stylesheet" />
    <link href="../scss/_tables.css" rel="stylesheet" />
    <link href="../scss/_views.css" rel="stylesheet" />
    >

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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

                        <div class="tab-pane active" id="lista">
                            <div class="panel-body">


                                <div class="main-content">

                                    <div class="row">
                                        <div class="col-lg-13 animatedParent animateOnce z-index-50">
                                            <div class="panel panel-default animated fadeInUp go">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                                            <div id="DataTables_Table_0_filter" class="dataTables_filter" style="margin-bottom: 10px">
                                                                <label>Pesquisa:<input type="search" class="form-control input-sm" placeholder="" aria-controls="DataTables_Table_0"></label>
                                                            </div>

                                                            <div class="dataTables_length" id="DataTables_Table_0_length">
                                                                <label>
                                                                    Apresenta&nbsp;&nbsp; 
                                                                    <asp:DropDownList ID="DropDownListQtdeRegistros" name="DataTables_Table_0_length" runat="server" aria-controls="DataTables_Table_0" class="form-control input-sm">
                                                                        <asp:ListItem Selected="True">2</asp:ListItem>
                                                                        <asp:ListItem>25</asp:ListItem>
                                                                        <asp:ListItem>50</asp:ListItem>
                                                                        <asp:ListItem>100</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    &nbsp;&nbsp;
                                                                    por página
                                                                </label>
                                                            </div>

                                                            <table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" role="grid">
                                                                <thead>
                                                                    <tr role="row">
                                                                        <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 200px;">Nome</th>
                                                                        <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 186px;">E-mail</th>
                                                                        <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 120px;">Telefone</th>
                                                                        <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 160px;">Ações</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <asp:Repeater ID="RepeaterAlunos" runat="server">
                                                                        <ItemTemplate>

                                                                            <tr class="gradeA odd" role="row">
                                                                                <td class="sorting_1"><%# DataBinder.Eval(Container.DataItem,"Nome") %></td>
                                                                                <td><%# DataBinder.Eval(Container.DataItem,"Email") %></td>
                                                                                <td><%# DataBinder.Eval(Container.DataItem,"Telefone") %></td>
                                                                                <td>
                                                                                    <button class="btn btn-default btn-acoes" type="button" style="padding-right: 0px;" data-toggle="tooltip" data-placement="top" title="Editar">
                                                                                        <i class="fa fa-wrench icone-acoes"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Treinos">
                                                                                        <i class="icon-trophy"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Avaliações">
                                                                                        <i class="fa fa-list-alt icone-acoes"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Periodização">
                                                                                        <i class="fa fa-calendar icone-acoes" style="width: 1.0em;"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Enviar mensagem">
                                                                                        <i class="fa fa-envelope icone-acoes"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Redefinir senha">
                                                                                      <i class="icon-lock"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Desativar">
                                                                                        <i class="fa fa-power-off  icone-acoes"></i>
                                                                                    </button>

                                                                                    <button class="btn btn-default btn-acoes" type="button" data-toggle="tooltip" data-placement="top" title="Excluir">
                                                                                        <i class="icon-trash"></i>
                                                                                    </button>
                                                                                </td>
                                                                            </tr>

                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>
                                                            <div style="margin-top: -10px" class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Exibindo 1 registro(s) de 10. Total de 1 página(s)</div>

                                                            <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                                                <ul class="pagination" style="margin-top: -5px">
                                                                    <li class="paginate_button previous disabled" id="DataTables_Table_0_previous">
                                                                        <asp:LinkButton ID="LnkBtnAnterior" runat="server" aria-controls="DataTables_Table_0" data-dt-idx="0" TabIndex="0" OnClick="LnkBtnAnterior_Click">Anterior</asp:LinkButton>
                                                                    </li>

                                                                    <%--<asp:Literal ID="LiteralPaginas" runat="server"></asp:Literal>--%>

                                                                    <asp:Repeater ID="RepeaterPaginas" runat="server" OnItemCommand="Teste">
                                                                        <ItemTemplate>                                               

                                                                            <li class='<%# DataBinder.Eval(Container.DataItem,"classe") %>'>
                                                                           <asp:LinkButton ID="teste" CommandName='<%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>' runat="server" 
                                                                                    aria-controls="DataTables_Table_0" data-dt-idx='<%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>' TabIndex="0">
                                                                                    <%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>
                                                                                </asp:LinkButton>
                                                                               
                                                                            </li>

                                                                        </ItemTemplate>
                                                                    </asp:Repeater>

                                                                    <li class="paginate_button next" id="DataTables_Table_0_next">
                                                                        <asp:LinkButton ID="LnkBtnProximo" runat="server" aria-controls="DataTables_Table_0" data-dt-idx="7" TabIndex="0" OnClick="LnkBtnProximo_Click">Próximo</asp:LinkButton>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>


                            </div>
                        </div>


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


                    </div>
                    <!-- tab-content -->
                </div>
                <!-- rtabs-container animated fadeInUp goow -->
            </div>
            <!-- col-md-12 animatedParent animateOnce z-index-50 -->
        </div>
        <!-- row -->

        <div style="display: none">
            <asp:Button ID="btnPagina" runat="server" Text="Pagina" OnClick="btnPagina_Click"/>
            <asp:TextBox ID="txtPaginaClicada" runat="server"></asp:TextBox>
        </div>

        <% Server.Execute("rodape.aspx");%>
    </div>
    <!-- /main content -->



    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <script>
        $('[data-toggle="tooltip"]').tooltip();


        function ClickPagina(pagina) {
            $("#txtPaginaClicada").val(pagina);
            alert($("#txtPaginaClicada").val());
            document.getElementById("<%=btnPagina.ClientID%>").click();
        }


    </script>

</asp:Content>

