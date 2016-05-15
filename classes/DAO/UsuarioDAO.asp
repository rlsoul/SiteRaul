<!--#include file="../Connection/ConnectionClass.asp" -->
<%
	Class UsuarioDAO
		Public Function Consultar(usuario, senha)
			Dim sql 
			sql = "SELECT * FROM contatos " & "WHERE Nome = " & usuario & " And Senha = " & senha

			Dim objRs
			Call ExecuteReader(sql, objRs)

			If Not objRs.EOF Then

				EfetuarLogin = True

			Else
				
				EfetuarLogin = False

			End If

			objRs.Close
			Set objRs = Nothing
			CloseConnection()
		End Function
	End Class

%>