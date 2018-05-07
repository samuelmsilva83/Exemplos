<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" CodeFile="ToolTip.aspx.cs" Inherits="sistema_ToolTip" %>

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
    <link href="../scss/_views.css" rel="stylesheet" />>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <button class="btn btn-default" type="button" style="padding:1px 2px;padding-right:0px;margin-left:4px;" data-toggle="tooltip" 
                                                                                            data-placement="top" title="Editar" > 
                                                                                <i class="fa fa-wrench" style="font-style:normal;display: inline-block;width:1.1em;text-align:center;"></i>
                                                                            </button>


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
                                                            <div id="DataTables_Table_0_filter" class="dataTables_filter" style="margin-bottom:10px" >
                                                                <label>Pesquisa:<input type="search" class="form-control input-sm" placeholder="" aria-controls="DataTables_Table_0"></label>
                                                            </div>

                                                            <div class="dataTables_length" id="DataTables_Table_0_length">
                                                                <label>
                                                                    Apresenta&nbsp;&nbsp; 
                                                                    <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-control input-sm">
                                                                        <option value="10">10</option>
                                                                        <option value="25">25</option>
                                                                        <option value="50">50</option>
                                                                        <option value="100">100</option>
                                                                    </select>&nbsp;&nbsp;
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

                                                                    <tr class="gradeA odd" role="row">
                                                                        <td class="sorting_1">Samuel Moreira da Silva</td>
                                                                        <td>samuelmsilva@gmail.com</td>
                                                                        <td>(41) 99700-6073</td>
                                                                        <td>
                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;padding-right:0px;margin-left:4px;" data-toggle="tooltip" 
                                                                                            data-placement="top" title="Editar" > 
                                                                                <i class="fa fa-wrench" style="font-style:normal;display: inline-block;width:1.1em;text-align:center;"></i>
                                                                            </button>
                                                                           
                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                <i class="icon-trophy"></i>
                                                                            </button>

                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                 <i class="fa fa-list-alt" style="font-style:normal;display: inline-block;width:1.1em;text-align:center;"></i>
                                                                            </button>

                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                <i class="fa fa-calendar" style="font-style:normal;display: inline-block;width:1.0em;text-align:center;"></i>
                                                                            </button>

                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                <i class="fa fa-envelope" style="font-style:normal;display: inline-block;width:1.1em;text-align:center;"></i>
                                                                            </button>

                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                <i class="icon-lock"></i> 
                                                                            </button>

                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> 
                                                                                <i class="fa fa-power-off" style="font-style:normal;display: inline-block;width:1em;text-align:center;"></i>
                                                                            </button>
                                                                            <button class="btn btn-default" type="button" style="padding:1px 2px;margin-left:4px;"> <i class="icon-trash"></i> </button>
                                                                        </td>
                                                                    </tr>
                                                                    
                                                                    <tr class="gradeA even" role="row">
                                                                        <td class="sorting_1">Samuel Moreira da Silva</td>
                                                                        <td>samuelmsilva@gmail.com</td>
                                                                        <td>(41) 99700-6073</td>
                                                                        <td>
                                                                       <a href="" title="Editar"           class="icone-edicao"><i class="fa fa-wrench"></i></a>&nbsp;&nbsp;
                                                                        <a href="" title="Treinos"          class="icone-edicao"><img src="../images/halter.png" /></a>&nbsp;&nbsp;
                                                                            <a href="" title="Avaliações"       class="icone-edicao"><i class="fa fa-list-alt"></i></a>&nbsp;&nbsp;
                                                                            <a href="" title="Periodização"     class="icone-edicao"><i class="fa fa-calendar"></i></a>&nbsp;&nbsp;
                                                                            <a href="" title="Enviar Mensagem"  class="icone-edicao"><i class="fa fa-envelope"></i></a>&nbsp;&nbsp;
                                                                            <a href="" title="Redefinir Senha"  class="icone-nova-senha"><i class="fa fa-lock" style="width:50px;"></i></a>&nbsp;&nbsp;
                                                                            <a href="" title="Ativar Aluno"     class="icone-aluno-ativo"><i class="fa fa-power-off"></i></a>&nbsp;&nbsp;
                                                                            <a href="" title="Excluir Aluno"    class="icone-delecao"><i class="fa fa-trash-o"></i></a>


                                                                     
                                                                        </td>
                                                                    </tr>
                                                                   </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <th rowspan="1" colspan="1">Rendering engine</th>
                                                                        <th rowspan="1" colspan="1">Browser</th>
                                                                        <th rowspan="1" colspan="1">Engine version</th>
                                                                        <th rowspan="1" colspan="1">CSS grade</th>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                            <div style="margin-top:-10px" class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Exibindo 1 registro(s) de 10. Total de 1 página(s)</div>

                                                            <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                                                <ul class="pagination" style="margin-top:-5px" >
                                                                    <li class="paginate_button previous disabled" id="DataTables_Table_0_previous"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0">Anterior</a></li>
                                                                    <li class="paginate_button active"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a></li>
                                                                    <li class="paginate_button "><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">2</a></li>
                                                                    <li class="paginate_button "><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0">3</a></li>
                                                                    <li class="paginate_button "><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="4" tabindex="0">4</a></li>
                                                                    <li class="paginate_button "><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="5" tabindex="0">5</a></li>
                                                                    <li class="paginate_button "><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="6" tabindex="0">6</a></li>
                                                                    <li class="paginate_button next" id="DataTables_Table_0_next"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="7" tabindex="0">Próximo</a></li>
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
                                            <asp:requiredfieldvalidator ID="RfvNome" ControlToValidate="TxtNome" runat="server" errormessage="Nome é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:requiredfieldvalidator>
								        </div> 
							        </div>

                           	        <div class="form-group"> 
								        <label class="col-sm-2 control-label">*E-mail</label> 
								        <div class="col-sm-10"> 
                                            <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
                                            <asp:requiredfieldvalidator ID="RfvEmail" ControlToValidate="TxtEmail" runat="server" errormessage="Email é obrigatório" ForeColor="#CC0000" SetFocusOnError="True"></asp:requiredfieldvalidator>
                                            <asp:regularexpressionvalidator ID="RevEmail" Style="margin-left:-134px" ControlToValidate="TxtEmail" runat="server" errormessage="Email inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000" SetFocusOnError="True"></asp:regularexpressionvalidator>
                                        </div> 
							        </div>
						
                                     <div class="form-group"> 
									        <label class="col-sm-2 control-label">*Data de Nascimento</label> 
									        <div class="col-sm-3"> 
										        <div id="year-view" class="input-group date"> 
                                                    <asp:TextBox ID="TxtDtNascimento" class="form-control" runat="server"></asp:TextBox>
											        <asp:requiredfieldvalidator ID="RfvDtNascimento" ControlToValidate="TxtDtNascimento" runat="server" errormessage="Data de nascimento é obrigatória" ForeColor="#CC0000" SetFocusOnError="True"></asp:requiredfieldvalidator>
                                                    <asp:regularexpressionvalidator ID="RevDtNascimento" Style="margin-left:-193px" ControlToValidate="TxtDtNascimento" runat="server" errormessage="Data de nascimento inválida" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}$" ForeColor="#CC0000" SetFocusOnError="True"></asp:regularexpressionvalidator>
                                                </div>
									        </div> 
								        </div>

							        <div class="form-group"> 
                                        <label class="col-sm-2 control-label">Sexo</label>
                                         <div class="col-sm-10">
									        <div class="radio"> 
                                                <label> 
                                                    <asp:radiobutton id="RadioMasculino" name="radioGenero" runat="server" Checked="True" GroupName="radioGenero" ></asp:radiobutton>
                                                    Masculino
                                                </label> 
									        </div> 
								 	        <div class="radio">
                                                 <label>
                                                    <asp:radiobutton id="RadioFeminino" name="radioGenero" runat="server" Checked="false" GroupName="radioGenero" ></asp:radiobutton>
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
                                            <asp:textbox id="TxtAreaObservacao" runat="server" mode="multiline" Rows="5" height="100" class="form-control" TextMode="MultiLine"></asp:textbox>
								        </div> 
							        </div>


                                     <div class="form-group">
								        <div class="col-sm-4 col-sm-offset-2">
                                            <asp:Button ID="BtnSalvar" Text="Salvar" class="btn btn-primary" runat="server" /> 
								        </div>
							        </div>


                                </div> <!-- Fim form-horizontal  --> 
                     




                            </div>
                        </div>


                    </div> <!-- tab-content -->
                </div> <!-- rtabs-container animated fadeInUp goow -->
            </div> <!-- col-md-12 animatedParent animateOnce z-index-50 -->
        </div> <!-- row -->



        <% Server.Execute("rodape.aspx");%>
    </div>
    <!-- /main content -->





    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>


        <script>
        $('[data-toggle="tooltip"]').tooltip(); 

    </script>

</asp:Content>

