<%@language=vbscript codepage=936 %>
<!--#INCLUDE FILE="config.asp"-->
<!--#INCLUDE FILE="background.asp"-->
<%session("list")=0%>
<%
Set rs=server.createobject("ADODB.RECORDSET")
session("useridname")=Request.cookies("ly")("useridname")
session("useridpassword")=Request.cookies("ly")("useridpassword")
if session("useridname")<>"" then
	rs.open "select level1 from register where username='"&session("useridname")&"'",conn,1,1
	if not rs.eof then
		if rs("level1")="����Ա" then session("admin")=1
		if rs("level1")="����" then session("admin")=2
		if rs("level1")<>"����" and rs("level1")<>"����Ա" then session("admin")=0
	else
		session("admin")=0
	end if
	rs.close
end if
if session("showmodal")="" then
	rs.open "Select modal From option1",Conn,3,3
	if rs("modal")=2 then response.Redirect("default1.asp")
	if rs("modal")=2 then response.Redirect("default1.asp")
	session("showmodal")="1"
	rs.close
end if
%>
<%
del=no
type1=no
del=request("del")
type1=request("type1")
if del="ok" and session("admin")=true then
if type1="ok" then
	rs.open "Select * From reply where id1="&request("id"),Conn,2,3
else
	rs.open "Select * From guest where id="&request("id"),Conn,2,3
end if
rs.delete
rs.update
rs.close
set rs=nothing
response.Redirect "default.asp"
end if

   text=request("text")
   option1=request("option")
   if option1="" then option1=0
if session("admin")="" then session("admin")=false
webname=rs11("webname")
homepage=rs11("weblink")
if request("jinghua")="1" then jinghua=" and jinghua=true" else jinghua=""
if rs11("show") and ((session("admin")<>1) and (session("admin")<>2)) then mark="(mark=true) and "
select case option1
case 1
SQL="Select * From guest where "&mark&"subject like '%"&text&"%'"&jinghua&" order by top1,lastdate desc"
case 2
SQL="Select * From guest where "&mark&"content like '%"&text&"%'"&jinghua&" order by top1,lastdate desc"
case 3
SQL="Select distinct (guest.id),guest.lastname,guest.fontcolor,guest.subject,guest.top1,guest.lastdate,guest.username,guest.face,guest.hf,guest.yd,guest.pic,guest.secret,guest.lock,guest.mark,guest.jinghua From guest,reply where "&mark&"(guest.id=reply.id) and (reply.replycontent like '%"&text&"%'"&")"&jinghua&" order by top1,guest.lastdate desc"
case 4
SQL="Select id,lastname,fontcolor,subject,top1,lastdate,username,face,hf,yd,pic,secret,lock,mark,jinghua From guest where username like '%"&text&"%' order by top1,lastdate UNION Select distinct (guest.id),guest.lastname,guest.fontcolor,guest.subject,guest.top1,guest.lastdate,guest.username,guest.face,guest.hf,guest.yd,guest.pic,guest.secret,guest.lock,guest.mark,guest.jinghua From guest,reply where "&mark&"(guest.id=reply.id) and (reply.replyname like '%"&text&"%'"&" or guest.username like '%"&text&"%')"&jinghua&" order by top1,guest.lastdate desc"
case 5
SQL="Select distinct (guest.id),guest.lastname,guest.fontcolor,guest.subject,guest.top1,guest.lastdate,guest.username,guest.face,guest.hf,guest.yd,guest.pic,guest.secret,guest.lock,guest.mark,guest.jinghua From guest,reply where (guest.mark=false or reply.mark=false) and (guest.id=reply.id) order by top1,guest.lastdate desc UNION Select id,lastname,fontcolor,subject,top1,lastdate,username,face,hf,yd,pic,secret,lock,mark,jinghua From guest where mark=false order by top1,lastdate desc"
case else
sql="SELECT * FROM guest where "&mark&"1=1"&jinghua&" order by top1,lastdate desc"
end select
   rs.open sql,conn,3,3
if not rs.eof then 
	 dim maxperpage,url,PageNo
	 url="default.asp?text="&text&"&option="&option1&"&jinghua="&request("jinghua")
	 rs.pagesize=rs11("row2")
	 PageNo=REQUEST("PageNo")
	 if PageNo="" or PageNo=0 then PageNo=1
	 RS.AbsolutePage=PageNo
	 TSum=rs.pagecount
	 maxperpage=rs.pagesize
	 RowCount=rs.PageSize
	   PageNo=PageNo+1
	   PageNo=PageNo-1
	 if CINT(PageNo)>1 then
	    if CINT(PageNo)>CINT(TSum) then
		  response.Write("�Բ���û������Ҫ��ҳ��")
          Response.End
	    end if
	 end if		    
     if PageNo<0 then
	    response.Write("û����һҳ!")
		Response.End
	 End if
end if
%>
<link href="1.css" rel="stylesheet" type="text/css">
<%if rs11("lytitle")="" then%><title>�๦�����԰�</title><%else%><title><%=rs11("lytitle")%></title><%end if%>
<table border=0 cellspacing=0 align=center width="100%"> 
<tbody>
  <tr> 
    <td align=center> <div align="center">
        <!--#INCLUDE FILE="top.asp"-->
      </div>
      <table border=0 width=100% align=center>
        <tr> 
          <td width="100%" align=center><hr size=1 width=100% noshade color=#C0C0C0></tr>
      </table></td>
  </tr>
  <tr> 
    <td> <table width=100% border=0 align=center>
        <td width="183" align=left> <font color=#000000>������:</font><font color=#000000><%=rs.RECORDCOUNT%></font> 
          ��ҳ��:<font color=#000000><%=TSum%></font>&nbsp; �� <%=PageNo%> <font color=#000000>ҳ</font>        </td>
        <td align=right> 
          <!--#INCLUDE FILE="link.asp"-->        </td>
      </table></tr>
  <tr>
    <td><HR SIZE=1 WIDTH=100% NOSHADE COLOR=#C0C0C0></td>
  </tr>
  <tr> 
    <td align=left><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="59%" height="20" valign="middle"> <img src="images/home.gif" width="16" height="16"><a href="<%=homepage%>"><%=webname%>��ҳ</a> 
            <img src="images/style.gif" align=absmiddle><a href="default1.asp">���԰巽ʽ�鿴 
          </a>��ɫ��
          <select name="skin" id="skin" onChange="javascript:location.href='default.asp?skin='+document.all.skin.value">
              <option value="1" selected>�������</option>
              <option value="2" <%if skin=2 then response.write("selected")%>>ˮ����ɫ</option>
              <option value="3" <%if skin=3 then response.write("selected")%>>���ⰻȻ</option>
              <option value="4" <%if skin=4 then response.write("selected")%>>��Ұ����</option>
              <option value="5" <%if skin=5 then response.write("selected")%>>ŨŨ����</option>
              <option value="6" <%if skin=6 then response.write("selected")%>>���Ӻ���</option>
            </select></td>
          <td width="19%" valign="middle"><MARQUEE height=16 scrollAmount=2 scrollDelay=10 align="middle">
      <%=rs11("lygg")%>
    </MARQUEE></td>
          <td width="22%"> <div align="right"> 
              <% 
if TSum>1 Then
 If PageNo=TSum or PageNo<>1 Then 
   PrwePage=PageNo-1
   Response.Write "<A HREF=default.asp?Pageno=1"&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">��һҳ</A>  "         
   Response.Write "<A HREF=default.asp?Pageno="&PrwePage&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">��һҳ</A>  "              
 End If        
 If pageno=1 or TSum>PageNo Then 
   NextPage=PageNo+1             
   Response.Write "<A HREF=default.asp?PageNo="&NextPage&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">��һҳ</A>  "
   Response.Write "<A HREF=default.asp?Pageno="&rs.PageCount&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">ĩһҳ</A>  "          
 End If                    
End If          
%>
          </div></td>
        </tr>
      </table>
      <td></tr>
  <tr> 
    <%
	if PageNo=1 then i=rs.RECORDCOUNT else i=rs.RECORDCOUNT-(30*(PageNo-1))
	  %>
<tbody>
  <tr>	  
    <form action="progress.asp" method="post" name="form" id="form">
      <table width="100%" align="center" cellpadding="5" cellspacing="1" class="tablebg<%=skin%>b">
        <tr class="tablebg<%=skin%>a"> 
          <td width="40" class="tablebg<%=skin%>d"> <p align="center"><strong>״̬</strong> 
          </td>
          <td width="40" class="tablebg<%=skin%>d"><div align="center"><strong>����</strong></div></td>
          <td class="tablebg<%=skin%>c"><div align="center"><b>�� 
          �� �� ��</b></div></td>
          <td width="100" class="tablebg<%=skin%>d"> 
          <p align="center"><b>��&nbsp; ��</b> </td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><b>�ظ�</b></td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><b>�Ķ�</b></td>
          <td width="200" align=center class="tablebg<%=skin%>d"> 
            <b>���ظ�</b> </td>
          <%if (session("admin")=1) or (session("admin")=2) then%>
          <td width="39" align=center class="tablebg<%=skin%>d"><strong>����</strong></td>
          <%end if%>
        </tr>
        <% DO WHILE NOT rs.EOF AND RowCount>0%>
        <tr class="tablebg<%=skin%>d"> 
          <td width="40" align="center"> 
            <%if rs11("show") and not rs("mark") then%>
            <img src="images/folder1.gif" alt="δ�������"> 
            <%else if rs("top1")=true then%>
            <img src="images/top.gif" alt="�̶�����"> 
            <%else if rs("lock")=true then%>
            <img src="images/lock.gif" alt="��������"> 
            <%else if rs("hf")>=10 then%>
            <img src="images/hotfolder.gif" alt="�ȵ�����"> 
            <%else if DateDiff("d",rs("lastdate"),Now)=0 then%>
            <img src="images/newfolder.gif" alt="������"> 
            <%else%>
            <img src="images/folder.gif" alt="��ͨ����"> 
            <%end if%>
            <%end if%>
            <%end if%>
            <%end if%>
          <%end if%>          </td>
          <td width="40" height="28" align="center"><img src="images/<%=rs("pic")%>" ></td>
          <td width="348" class="tablebg<%=skin%>c" onmouseover="this.className='tablebg<%=skin%>d'" onmouseout="this.className='tablebg<%=skin%>c'"> 
            <%if rs("subject")="" then %>
            <a href="show.asp?id=<%=rs("id")%>">�ޱ���</a> 
            <%else%>
            <a href="show.asp?id=<%=rs("id")%>"><font color="<%=rs("fontcolor")%>"><%=rs("subject")%></font></a>
            <%end if%>
            <%if rs("hf")>10 then%>
            [<img src="images/page.gif" width="10" height="12"> 
            <%if rs("hf") mod 10=0 then end1=rs("hf")/10 else end1=rs("hf")/10+1 end if%>
            <%for i=1 to end1%>
            <a href="show.asp?PageNo=<%=i%>&id=<%=rs("id")%>"><strong><font color="#FF0000">	
            <%response.write i%>
            </font></strong></a> 
            <%response.write " "%>
            <%next%>
            ] 
          <%end if%> <%if rs("jinghua") then response.Write("<img src='images/jh.gif' border=0>")%>         </td>
          <td width="100" align="center" class="jnfont5"> <div align="center"><font color=#000000> 
              <%if rs("username")<>"" then%>
              <%=rs("username")%> 
              <%else%>
              ������ 
              <%end if%>
              <%
			  Set rs2=server.createobject("ADODB.RECORDSET")
			  sql2="SELECT * FROM register where username='"&rs("username")&"'"
			  rs2.open sql2,conn,1,1
			  if not rs2.eof then			  
			  %>
              <%if Instr(rs2("level1"),"�α�")>0 then%>
              <img src="images/fbz.gif" alt="�α�" width="16" height="16"> 
              <%end if%>
              <%if Instr(rs2("level1"),"����")>0 then%>
              <img src="images/bz.gif" alt="����" width="16" height="16"> 
              <%end if%>			  
              <%if rs2("level1")="����Ա" then%>
              <img src="images/gly.gif" alt="����Ա" width="15" height="18"> 
              <%end if
			  end if
			  %>
          </font> </div></td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><font color=#000000><%=rs("hf")%></font></td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><font color=#000000><%=rs("yd")%></font></td>
          <td width="250" align="center" > 
            <div align="left">
              <%=rs("lastdate")&" <font color=#FF0000>|</font> "&rs("lastname")%>        
          </div></td>
          <%if (session("admin")=1) or (session("admin")=2) then%>
          <td width="39" align="center"><input name="<%=rs("id")%>" type="checkbox" id="<%=rs("id")%>3" value="on"></td>
          <%end if%>
        </tr>
        <%
RowCount = RowCount - 1
	  i=i-1
      rs.MoveNext 
      Loop%>
      </table>
    <TABLE width=100% height="5" border=0 align=center cellPadding=3 cellSpacing=0>
      <TBODY>
        <TR> 
          <TD width="40%" style="LETTER-SPACING: 1px"><div align="left"><%if (session("admin")=1) or (session("admin")=2) then%><a href=### onClick=checkAll()>ȫѡ</a> <a href=### onClick=checkNone() >ȫ��ѡ</a> <a href=### onClick=checkRev() >��ѡ</a>
                <select name=act class=input2>
                  <option value="1">ɾ������</option>
			      <option value="4">�ᵽ��ǰ</option>
                  <option value="2">�̶�����</option>
			      <option value="5">ȡ���̶�</option>
                  <option value="3">��������</option>
			      <option value="6">�������</option>
                  <option value="7">�������</option>
                  <option value="8">ȡ�����</option>
                  <option value="9">��Ϊ����</option>
                  <option value="10">ȡ������</option>
                </select>
                <input name="goto" type=submit class=input2 id="goto2" value="ȷ��">
          <%end if%></div></TD>
          <TD width="60%" style="LETTER-SPACING: 1px">
            <div align="right">
                <% call showpage(url,rs.RECORDCOUNT,maxperpage,false,true,"������") %>
          </div></TD>
        </TR>
	    <%if (session("admin")=1) or (session("admin")=2) then%>
        <TR> 
          <TD colspan="2" style="LETTER-SPACING: 1px"><div align="center"></div></TD>
        </TR>
	    <%end if%>
      </TBODY>
    </TABLE>
    </form>
<tbody>
  <tr>
      <table width="100%" border="0" align="center">
        <tr> 
          <td width="100%" height="39"> <form action="default.asp" method="post" name="form" id="form">
              <div align="center">
              <div align="center"><IMG src="images/search.gif" width="16" height="16" align=absMiddle> 
                ������ 
                  <INPUT 
      class=input1 size=25 name=text>
                  <INPUT name=option type=radio value=1 CHECKED>
                �������� 
                <INPUT type=radio value=2 name=option>
                �������� 
                <INPUT type=radio value=3 name=option>
�ظ�����
<input type=radio value=4 name=option>
                ע������
                <%if (session("admin")=1) or (session("admin")=2) then%>
                <input type=radio value=5 name=option>
��������
<%end if%>                
<INPUT name="submit" type=submit class=input2 value=" �� �� ">
              </div>
          </form></td>
        </tr>
      </table>
<div align="center"> 
</div>
    <table border=0 width=100% align=center>
      <tr> 
        <td width="100%" height=12><HR SIZE=1 WIDTH=100% NOSHADE COLOR=#C0C0C0></td>
      </tr>
      <tr> 
        <td align=center> 
          <!--#INCLUDE FILE="bottom.asp"-->
      </tr>
    </table>
</html>
<%
set rs=nothing
set rs2=nothing
%>
<script language="JavaScript">
function checkAll()
{
	var objID;
	objID=document.forms[0].elements;
	for (var i=0 ;i<objID.length-2;i++)
	{
		objID[i].checked=true;
	}
}

function checkNone()
{
	var objID;
	objID=document.forms[0].elements;
	for (var i=0 ;i<objID.length-2;i++)
	{
		objID[i].checked=false;
	}
}

function checkRev()
{
	var objID;
	objID=document.forms[0].elements;
	for (var i=0 ;i<objID.length-2;i++)
	{
		if (objID[i].checked==true)
			objID[i].checked=false;
		else
			objID[i].checked=true;
	}
}
</script>
