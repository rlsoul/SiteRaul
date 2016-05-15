<%

'-----------------------------------------------'
' Database connection strings [mySql, sqlServer '
'-----------------------------------------------'

sMysqlConn = "DRIVER={MySQL ODBC 5.3 ANSI Driver};SERVER=localhost;DATABASE=CURSO_JAVA;USER=root;PASSWORD=root;OPTION=3;"

'----------------------------------------------'
' Executes given query then closes all objects '
'----------------------------------------------'

sub ExecuteNonQuery(sql)
	set db = Server.CreateObject("ADODB.Connection")
	db.open sMysqlConn
	
	set rs = db.execute(sql)
	set rs = nothing
	db.close
	set db = nothing
end sub

'----------------------------------------------'
' Executes given query then returns the reader '
'----------------------------------------------'

function ExecuteReader(sql, ByRef objRs)
    Set oConn = Server.CreateObject("ADODB.Connection")
    oConn.Open sMysqlConn

    Set objRs = Server.CreateObject("ADODB.Recordset")
    objRs.CursorLocation = 3

    objRs.Open sql, oConn, 3, 4
    
    Set ExecuteReader = objRs
	
    'oConn.Close
    'Set oConn = Nothing
end function

Sub CloseConnection()
	
    Set oConn = Nothing
End Sub

'--------------------------------------------------------------------'
'This function takes two arrays, and generates a sql INSERT statement'
'--------------------------------------------------------------------'

function sqlInsert(dataNames, dataValues, tableName)
   sqlNames = "INSERT INTO " & tableName & "("
   for x = 0 to ubound(dataNames)
      if x <> ubound(dataNames) then
         sqlNames = sqlNames & dataNames(x) & ", "
         sqlValues = sqlValues & "'" & dataValues(x) & "', "
      else
         sqlNames = sqlNames & dataNames(x) & ")" & " VALUES ("
         sqlValues = sqlValues & "'" & dataValues(x) & "');"
      end if
   next

   ExecuteNonQuery(sqlNames & sqlValues)
end function

'--------------------------------------------------------------------'
'This function takes two arrays, and generates a sql UPDATE statement'
'--------------------------------------------------------------------'

function sqlUpdate(dataNames, dataValues, tableName, condition)
	sql = "UPDATE " & tablename & " SET "
	for x = 0 to ubound(dataNames)
		if x <> ubound(dataNames) then
			sql = sql & dataNames(x) & "= '" & replace(dataValues(x), "'", "''") & "', "
		else
			sql = sql & dataNames(x) & "= '" & replace(dataValues(x), "'", "''") & "' "
		end if
	next
	sql = sql & condition

	ExecuteNonQuery(sql)
end function

%>