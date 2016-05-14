<!-- Include Header -->
<!-- #include file="./include/header.asp" -->
<!-- #include file="./classes/Model/UsuarioClass.asp" -->
<!-- #include file="./classes/Business/UsuarioBusiness.asp" -->

<%
	
	If(Request("login") = "on") Then
		Dim mensagem
		Dim Usuario
		Set Usuario = New UsuarioClass
		Usuario.Login = Request("usuario")
		
		Dim UsuarioBS
		Set UsuarioBS = new UsuarioBusiness
		
		If(UsuarioBS.EfetuarLogin(Usuario.Login,Usuario.Senha, mensagem) = True) Then
			Session("UsuarioLogado") = true
			Response.Buffer = true
			Response.Clear
			Response.Write Session("UsuarioLogado") 
			Response.End
		Else
			Response.Buffer = true
			Response.Clear
			Response.Write mensagem
			Response.End
		End If
		
	End If
	
%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<div class="container col-lg-offset-5 col-lg-2">

	<form class="form-signin" id="formLogin" method="get">
		<div class="row bg-danger text-center text-danger" id="mensagemErro"></div>
		<h4 class="form-signin-heading text-center">Área do colaborador</h4>
		<label for="lblUsuario" class="sr-only">Usuário</label>
		<input type="text" id="txtUsuario" class="form-control" placeholder="Usuário" required >
		<label for="lblSenha" class="sr-only">Senha</label>
		<input type="password" id="txtSenha" class="form-control" placeholder="Senha" required>
		<button class="btn btn-lg btn-primary btn-block" id='btnLogin' type="button">Login</button>
		<button class="btn btn-lg btn-primary btn-block" id='btnVoltar' type="button" onclick="javascript:window.location='default.asp'">Voltar</button>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		
		$('#btnLogin').click(function () {

			$.ajax({
				type: "POST",
				url: "login.asp",
				data: { "login": "on", "usuario": $('#txtUsuario').val(), "senha:": $('#txtSenha').val() },
				async: false,
				success: function (data) { successLogin(data); },
				error: function (data) { failureLogin(data); }
			});
		});
	});

	var successLogin = function (data) {
		$('#mensagemErro').text(data);
	};

	var failureLogin = function (data) {
		$('#mensagemErro').text(data.responseText);
	};

</script>
<!-- /container -->
<!-- Include Footer -->
<!-- #include file="./include/footer.asp" -->
