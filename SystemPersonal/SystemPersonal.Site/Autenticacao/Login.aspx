<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Autenticação_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/animations.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/entypo.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/mouldifi-core.css" rel="stylesheet" />
    <link href="../css/mouldifi-forms.css" rel="stylesheet" />

    <title>System Personal</title>
</head>
<body>

    <body class="login-page">
	<div class="login-pag-inner">
		<div class="animatedParent animateOnce z-index-50">
			<div class="login-container animated growIn slower go">
				<div class="login-branding">
					<a href="index.html"><img src="images/logo.png" alt="Mouldifi" title="Mouldifi"></a>
				</div>
				<div class="login-content">
					<h2><strong>Bem Vindo!</strong></h2>
                    <asp:Label runat="server" ID="LblMensagem"></asp:Label>


                    <div class="alert alert-danger alert-dismissible" role="alert" style="display:none">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        Atenção! Seu e-mail e senha não conferem, por favor verifique seus dados!    
                    </div>

					<form method="post" runat="server">                        
						<div class="form-group">
                            <asp:TextBox ID="TxtUsuario" placeholder="Usuário" class="form-control" runat="server"></asp:TextBox>
						</div>                        
						<div class="form-group">
                             <asp:TextBox ID="TxtSenha" placeholder="Senha" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
						</div>
						<div class="form-group">
							 <div class="checkbox checkbox-replace">
								<input type="checkbox" id="remeber">
								<label for="remeber">Lembrar</label>
							  </div>
						 </div>
						<div class="form-group">
                            <asp:Button ID="BtnLogin" Text="Login" class="btn btn-primary btn-block" runat="server" OnClick="BtnLogin_Click"/>
						</div>
						<p class="text-center"><a href="">Esqueceu sua senha?</a></p>                        
					</form>
				</div>
			</div>
		</div>
	</div>
<!--Load JQuery-->
<script src="../js/jquery.min.js"></script>
<!-- Load CSS3 Animate It Plugin JS -->
<script src="../js/css3-animate-it.js"></script>

<script src="../js/bootstrap.min.js"></script>
<script src="../js/functions.js"></script>
<script src="../js/jquery-ui.js"></script>
<script src="../js/jquery.blockUI.js"></script>
<script src="../js/jquery.metisMenu.js"></script>

</body>



</body>
</html>


