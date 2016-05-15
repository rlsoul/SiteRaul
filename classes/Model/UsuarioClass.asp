<%

	Class UsuarioClass

		Private	varLogin
		Private	varSenha
		Private	varNome
		
		Private Sub Class_Initialize()
			varLogin = Empty
			varSenha = Empty
			varNome = Empty
		End Sub
		' Propriedades
		Public Property Get Login()
			Login = varLogin
		End Property
		Public Property Let Login(parmlogin)
			varLogin = parmlogin
		End Property

		Public Property Get Senha()
			Senha = varSenha
		End Property
		Public Property Let Senha(parmSenha)
			varSenha = parmSenha
		End Property

		Public Property Get Nome()
			Nome = varNome
		End Property
		Public Property Let Nome(parmNome)
			varNome = parmNome
		End Property
	
		' Fim Propriedades

		'Métodos
		'Public Sub EfetuarLogin(usuario, senha, ByRef mensagem)
		Public Function EfetuarLogin(byRef mensagem)
		
			if(varLogin <> "" And varSenha <> "") Then
			
				mensagem = "Logou"
				EfetuarLogin = True
			Else
				mensagem = "Informe o usuário e a senha!"
				EfetuarLogin = False
			End If
		End Function
	End Class
%>