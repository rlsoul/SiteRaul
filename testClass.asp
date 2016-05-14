<!--#include file="./classes/Connection/ConnectionClass.asp" -->
<%
    'test insert

    Dim valor
	Dim tabela
	Dim sql
	tabela = "contatos"
	dim dataNames 
	dataNames = array("Nome", "Endereco", "Email")
    dim dataValues 
	dataValues= array("Ryan", "Rua 1", "teste@teste.com.br")
    sqlInsert dataNames, dataValues, "contatos"
    
    'test update
    dim dataNames2 
	dataNames2 = array("Endereco")
    dim dataValues2 
	dataValues2 = array("xpsdsda")
	
	sqlUpdate dataNames2, dataValues2,tabela, "WHERE Nome = 'Ryan'"
    
    'test select
	sql = "SELECT * FROM contatos " & "WHERE Nome = 'Ryan'"

    Dim objRs
	Call ExecuteReader(sql, objRs)
	Do While Not objRs.EOF 
		response.write "Nome=" & objRs("Nome") & " Endereco=" & objRs("Endereco") & " ID = "& objRs("Id") & "<br/>"
		objRs.MoveNext
    Loop

	objRs.Close
	Set objRs = Nothing

    sql = "DELETE From contatos WHERE Nome = 'Ryan'"
	'test delete
    ExecuteNonQuery(sql)

	CloseConnection()
%>