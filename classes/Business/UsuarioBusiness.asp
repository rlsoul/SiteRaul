<!-- #include file="../DAO/UsuarioDAO.asp" -->
<%
	Class UsuarioBusiness
		Public Function EfetuarLogin(usuario, senha, ByRef mensagem)
			
			Dim DaoUsuario
			DaoUsuario = New UsuarioDAO

			if(DaoUsuario.Consultar(usuario, senha)) Then
				mensagem = "OK"
			Else
				mensagem = "Não foi possível realizar login com os dados informados!"
			End If

			
		End Function
	End Class

%>