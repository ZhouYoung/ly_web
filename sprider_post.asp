
<%@language=vbscript codepage=936 %>
<!--#INCLUDE FILE="config.asp"-->
<%


UserName = "22222Admin"
Face = ""
sex = ""
HomePage = ""
Email = "xyt3436@qq.com"
Subject = Request.form("title")
content = Request.form("txt")
IPinfo = "127.0.0.1"
bookdate = now
pic = "p16.gif"
secret = "0"
qq = "25250508"
mark = "0"
fontcolor = "±êÌâÐÑÄ¿"


sql="Insert Into guest (username,face,sex,homepage,mail,subject,content,IP,lydate,lastdate,pic,secret,qq,lastname,mark,fontcolor)  Values('"& UserName &"','"& Face &"','"& sex &"','"& HomePage &"', '"& Email &"','"& Subject &"','"&content &"','"& IPinfo &"','"& bookdate &"','"& bookdate &"','"& pic &"',"& secret &",'"&qq&"','¡ª¡ª',"&mark&",'"&fontcolor&"')"

conn.Execute sql

Set rs = Server.CreateObject( "ADODB.Recordset" )  
rs.open "Select * From guest order by id desc" ,Conn,1,1
id=rs("id")
rs.close
set rs=nothing
Response.write(id)

conn.close
%>