<HTML>
<HEAD>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<style>
BODY {PADDING:5PX}
TD,BODY,SELECT,P,INPUT {FONT-SIZE:9PT}
</style>
<script language=javascript>
var sAction = "INSERT";
var sTitle = "����";
var el;
var sText = "";
var sBehavior = "";
document.write("<title>��Ļ���ԣ�" + sTitle + "��</title>");


// ��ѡ�ĵ���¼�
function check(){
	sBehavior = event.srcElement.value;
}

// ��ʼֵ
function InitDocument() {
	d_text.value = sText;
	switch (sBehavior) {
	case "scroll":
		document.all("d_behavior")[0].checked = true;
		break;
	case "slide":
		document.all("d_behavior")[1].checked = true;
		break;
	default:
		sBehavior = "alternate";
		document.all("d_behavior")[2].checked = true;
		break;
	}

}
</script>


<SCRIPT event=onclick for=Ok language=JavaScript>
	sText = d_text.value;
	if (sAction == "MODI") {
		el.behavior = sBehavior;
		el.innerHTML = sText;
	}else{
              var str1;
              str1="<marquee behavior='"+sBehavior+"'>"+sText+"</marquee>"
	}
              window.returnValue = str1
              window.close();
</script>
</HEAD>

<body bgcolor=menu onload="InitDocument()">

<table border=0 cellpadding=0 cellspacing=0 align=center>
<tr><td>
	<FIELDSET align=left>
	<LEGEND></LEGEND>
	<table border=0 cellspacing=5 cellpadding=0>
	<tr valign=middle><td>�ı�:&nbsp;</td><td><input type=text id="d_text" size=50 value=""></td></tr>
	<tr valign=middle><td>����:&nbsp;</td><td><input onclick="check()" type="radio" name="d_behavior" value="scroll"> ������ <input onclick="check()" type="radio" name="d_behavior" value="slide"> �õ�Ƭ <input onclick="check()" type="radio" name="d_behavior" value="alternate"> ����</td></tr>
	</table>
	</FIELDSET>

</td></tr>
<tr><td height=10></td></tr>
<tr><td align=right><input type=submit value='  ȷ��  ' id=Ok>&nbsp;&nbsp;<input type=button value='  ȡ��  ' onclick="window.close();"></td></tr>
</table>

</body>
</html>