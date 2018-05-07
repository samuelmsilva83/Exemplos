<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" EnableViewState="true" enableEventValidation="false" CodeFile="webis.aspx.cs" Inherits="sistema_webis" %>

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
                                                                <label>
                                                                    Pesquisa:
                                                                    <asp:TextBox ID="TxtPesquisa" CssClass="form-control input-sm" aria-controls="DataTables_Table_0" runat="server" OnTextChanged="TxtPesquisa_TextChanged"></asp:TextBox>
                                                                </label>
                                                            </div>

                                                            <div class="dataTables_length" id="DataTables_Table_0_length">
                                                                <label>
                                                                    Apresenta&nbsp;&nbsp; 
                                                                    <asp:DropDownList ID="DropDownListQtdeRegistros" name="DataTables_Table_0_length" runat="server" aria-controls="DataTables_Table_0" class="form-control input-sm" OnSelectedIndexChanged="DropDownListQtdeRegistros_Changed" AutoPostBack="True">
                                                                        <asp:ListItem Selected="True">10</asp:ListItem>
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
                                                                        <th tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 240px;">Nome</th>
                                                                        <th tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 236px;">E-mail</th>
                                                                        <th tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 140px;">Telefone</th>
                                                                        <th tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 50px;">Ações</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <asp:Repeater ID="RptAlunos" runat="server" OnItemCommand="editarAluno">
                                                                        <ItemTemplate>

                                                                            <tr class="gradeA odd" role="row">
                                                                                <td class="sorting_1"><%# DataBinder.Eval(Container.DataItem,"Nome") %></td>
                                                                                <td><%# DataBinder.Eval(Container.DataItem,"Email") %></td>
                                                                                <td><%# DataBinder.Eval(Container.DataItem,"Telefone") %></td>
                                                                                <td>
                                                                                  <asp:LinkButton ID="btnEditarAluno" CssClass="btn btn-default btn-acoes" style="padding-right: 0px;"
                                                                                        CommandName="Editar" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"Id") %>' runat="server" title="Editar">
                                                                                        <i class="fa fa-wrench icone-acoes icone-edicao"></i>
                                                                                  </asp:LinkButton>

                                                                                  <LinkButton class="btn btn-default btn-acoes"  type="button" 
                                                                                        data-toggle="modal" data-placement="top" data-target='#exclui<%# DataBinder.Eval(Container.DataItem,"Id") %>'
                                                                                        title="Excluir">
                                                                                        <i class="icon-trash icone-delecao"></i>
                                                                                  </LinkButton> 
                                                                                  <LinkButton class="btn btn-default btn-acoes" type="button" 
                                                                                        data-toggle="modal" data-placement="top" data-target='#confirma<%# DataBinder.Eval(Container.DataItem,"ToolTip") %><%# DataBinder.Eval(Container.DataItem,"Id") %>' 
                                                                                        title='<%# DataBinder.Eval(Container.DataItem,"ToolTip") %>'>
                                                                                        <i class='<%# DataBinder.Eval(Container.DataItem,"ClasseStatus") %>' style=" width: 1em;"></i>
                                                                                  </LinkButton>
                                                                                </td>
                                                                            </tr>

                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>
                                                            <div style="margin-top: -10px" class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">
                                                                Exibindo <%= qtdeRegistroPag %> registro(s) de <%= totalQtdeRegPag %>. Total de  <%= totalPaginas %> página(s)
                                                            </div>

                                                            
                                                            <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                                                <ul class="pagination" style="margin-top: -5px">
                                                                    <li class='<%= classeBtnAnterior %>' id="DataTables_Table_0_previous">
                                                                        <asp:LinkButton ID="LnkBtnAnterior" runat="server" aria-controls="DataTables_Table_0" data-dt-idx="0" TabIndex="0" OnClick="LnkBtnAnterior_Click">Anterior</asp:LinkButton>
                                                                    </li>

                                                                  <asp:Repeater ID="Repeater1" OnItemCommand="teste" runat="server">
                                                                    <ItemTemplate>
            
                                                                          <li class='<%# DataBinder.Eval(Container.DataItem,"classe") %>'>
                                                                           <asp:LinkButton ID="teste" CommandName='<%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>' runat="server"
                                                                                    Enabled='<%# DataBinder.Eval(Container.DataItem,"habilitado") %>' 
                                                                                    aria-controls="DataTables_Table_0" data-dt-idx='<%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>' TabIndex="0">
                                                                                    <%# DataBinder.Eval(Container.DataItem,"numeroPagina") %>
                                                                                </asp:LinkButton>
                                                                            </li>
    
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                                 
                                                                    <li class='<%= classeBtnProximo %>' id="DataTables_Table_0_next">
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
<%--                                            <asp:RequiredFieldValidator ID="RfvNome" ControlToValidate="TxtNome" runat="server" ErrorMessage="Nome é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">*E-mail</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
<%--                                            <asp:RequiredFieldValidator ID="RfvEmail" ControlToValidate="TxtEmail" runat="server" ErrorMessage="Email é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RevEmail" Style="margin-left: -134px" ControlToValidate="TxtEmail" runat="server" ErrorMessage="Email inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">*Data de Nascimento</label>
                                        <div class="col-sm-3">
                                            <div id="year-view" class="input-group date">
                                                <asp:TextBox ID="TxtDtNascimento" class="form-control" runat="server"></asp:TextBox>
<%--                                                <asp:RequiredFieldValidator ID="RfvDtNascimento" ControlToValidate="TxtDtNascimento" runat="server" ErrorMessage="Data de nascimento é obrigatória" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RevDtNascimento" Style="margin-left: -193px" ControlToValidate="TxtDtNascimento" runat="server" ErrorMessage="Data de nascimento inválida" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}$" ForeColor="#CC0000" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>
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

    <asp:Repeater ID="RptModalStatus" runat="server" OnItemCommand="modalStatusAluno">

        <ItemTemplate>

            <div id='confirma<%# DataBinder.Eval(Container.DataItem,"ToolTip") %><%# DataBinder.Eval(Container.DataItem,"Id") %>' class="modal fade" tabindex="-1" role="dialog"  style="display: none;">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                            <p><%# DataBinder.Eval(Container.DataItem,"ToolTip") %> aluno <%# DataBinder.Eval(Container.DataItem,"Nome") %>?</p>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton ID="btnAtivaAluno" CssClass="btn btn-primary" CommandName='<%# DataBinder.Eval(Container.DataItem,"ToolTip") %>' 
                                CommandArgument='<%# DataBinder.Eval(Container.DataItem,"Id") %>' runat="server" Text="OK">
                            </asp:LinkButton>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div> <!-- /confirma -->

        </ItemTemplate>

    </asp:Repeater>

    <asp:Repeater ID="RptModalExcluir" runat="server" OnItemCommand="modalExcluirAluno">

        <ItemTemplate>

            <div id='exclui<%# DataBinder.Eval(Container.DataItem,"Id") %>' class="modal fade" tabindex="-1" role="dialog"  style="display: none;">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                            <p>Excluir aluno <%# DataBinder.Eval(Container.DataItem,"Nome") %>?</p>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton ID="btnExcluirAluno" CssClass="btn btn-primary" CommandName='Excluir' 
                                CommandArgument='<%# DataBinder.Eval(Container.DataItem,"Id") %>' runat="server" Text="OK">
                            </asp:LinkButton>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div> <!-- /exclui -->
        </ItemTemplate>

    </asp:Repeater>

    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
        
</asp:Content>

