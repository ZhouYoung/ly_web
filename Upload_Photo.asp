<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
BODY{
BACKGROUND-COLOR: #E8F0FF;
font-size:9pt
}
.tx1 { height: 20px;font-size: 9pt; border: 1px solid; border-color: #000000; color: #0000FF}
-->
</style>

<SCRIPT language=javascript>
function check() 
{
	var strFileName=document.form1.FileName.value;
	if (strFileName=="")
	{
    	alert("��ѡ��Ҫ�ϴ����ļ�");
		document.form1.FileName.focus();
    	return false;
  	}
}
</SCRIPT>
</head>
<body leftmargin="0" topmargin="0">
<form action="Upfile_Photo.asp" method="post" name="form1" onSubmit="return check()" enctype="multipart/form-data">
  <input name="FileName" type="FILE" class="tx1" size="30">
  <input type="submit" name="Submit" value="�ϴ�" style="border:1px double rgb(88,88,88);font:9pt">
  <input name="PhotoUrlID" type="hidden" id="PhotoUrlID" value="<%=Clng(trim(request("PhotoUrlID")))%>">
  <font color="#00FF00">
  <input name="id" type="hidden" id="id2" value="<%=request("id")%>">
  </font>
</form>
</body>
</html>