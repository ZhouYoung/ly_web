<HTML>
<HEAD>
<TITLE>�����������</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
body, a, table, div, span, td, th, input, select{font:9pt;font-family: "����", Verdana, Arial, Helvetica, sans-serif;}
body {padding:5px}
table.content {background-color:#000000;width:100%;}
table.content td {background-color:#ffffff;width:18px;height:18px;text-align:center;vertical-align:middle;cursor:hand;}
.card {cursor:hand;background-color:#3A6EA5;text-align:center;}
</STYLE>
<SCRIPT language=JavaScript>

// ѡ�����¼�
function cardClick(cardID){
	var obj;
	for (var i=1;i<7;i++){
		obj=document.all("card"+i);
		obj.style.backgroundColor="#3A6EA5";
		obj.style.color="#FFFFFF";
	}
	obj=document.all("card"+cardID);
	obj.style.backgroundColor="#FFFFFF";
	obj.style.color="#3A6EA5";

	for (var i=1;i<7;i++){
		obj=document.all("content"+i);
		obj.style.display="none";
	}
	obj=document.all("content"+cardID);
	obj.style.display="";
}

// Ԥ��
function SymbolOver(){
	var el=event.srcElement;
	preview.innerHTML=el.innerHTML;
}

// �������
function SymbolClick(){
	var el=event.srcElement;
        window.returnValue=el.innerHTML;
	window.close();
}

</script>
</HEAD>

<BODY bgcolor=menu>

<table border=0 cellpadding=0 cellspacing=0><tr valign=top><td>


<table border=0 cellpadding=3 cellspacing=0>
<tr align=center>
	<td class="card" onclick="cardClick(1)" id="card1">����</td>
	<td width=2></td>
	<td class="card" onclick="cardClick(2)" id="card2">���</td>
	<td width=2></td>
	<td class="card" onclick="cardClick(3)" id="card3">��ѧ</td>
	<td width=2></td>
	<td class="card" onclick="cardClick(4)" id="card4">��λ</td>
	<td width=2></td>
	<td class="card" onclick="cardClick(5)" id="card5">����</td>
	<td width=2></td>
	<td class="card" onclick="cardClick(6)" id="card6">ƴ��</td>
</tr>
<tr>
	<td bgcolor=#ffffff align=center valign=middle colspan=11>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content1">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�I</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�G</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�h</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�i</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�l</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�m</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�j</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�k</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�|</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�}</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�~</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�I</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�J</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�L</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�K</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�O</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�M</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&#65533;</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&yen;</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&pound;</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&#8482;</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&reg;</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">&copy;</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content2">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�U</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�E</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�F</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�o</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�p</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�q</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�r</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�s</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�t</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�u</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">-</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">-</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�n</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�v</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�w</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�x</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�y</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�z</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�{</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">'</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">'</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">"</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">"</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�A</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�@</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content3">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�Q</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�R</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�P</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�N</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�S</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�S</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�R</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content4">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�H</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�T</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�L</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�M</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�N</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�Q</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�O</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�J</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�K</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">�P</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content5">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>
	<table border=0 cellpadding=3 cellspacing=1 class="content" id="content6">
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	<tr>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
		<td onmouseover="SymbolOver()" onclick="SymbolClick()">��</td>
	</tr>
	</table>

	</td>
</tr>
</table>


</td><td width=10></td><td>

<table border=0 cellpadding=0 cellspacing=0>
<tr><td height=25></td></tr>
<tr><td align=center>Ԥ��</td></tr>
<tr><td height=10></td></tr>
<tr><td align=center valign=middle><table border=0 cellpadding=0 cellspacing=1 bgcolor=#000000><tr><td bgcolor=#ffffff style="font-size:32px;color:#0000ff" id=preview align=center valign=middle width=50 height=50></td></tr></table></td></tr>
<tr><td height=52></td></tr>
<tr><td align=center><input type=button value='  ȡ��  ' onclick="window.close();"></td></tr>
</table>

</td></tr></table>

<script language=javascript>
cardClick(1);
</script>

</BODY>
</HTML>