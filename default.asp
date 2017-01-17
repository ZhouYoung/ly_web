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
		if rs("level1")="管理员" then session("admin")=1
		if rs("level1")="版主" then session("admin")=2
		if rs("level1")<>"版主" and rs("level1")<>"管理员" then session("admin")=0
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
		  response.Write("对不起没有您想要的页数")
          Response.End
	    end if
	 end if		    
     if PageNo<0 then
	    response.Write("没有这一页!")
		Response.End
	 End if
end if
%>
<link href="1.css" rel="stylesheet" type="text/css">
<%if rs11("lytitle")="" then%><title>多功能留言板</title><%else%><title><%=rs11("lytitle")%></title><%end if%>
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
        <td width="183" align=left> <font color=#000000>留言数:</font><font color=#000000><%=rs.RECORDCOUNT%></font> 
          总页数:<font color=#000000><%=TSum%></font>&nbsp; 第 <%=PageNo%> <font color=#000000>页</font>        </td>
        <td align=right> 
          <!--#INCLUDE FILE="link.asp"-->        </td>
      </table></tr>
  <tr>
    <td><HR SIZE=1 WIDTH=100% NOSHADE COLOR=#C0C0C0></td>
  </tr>
  <tr> 
    <td align=left><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="59%" height="20" valign="middle"> <img src="images/home.gif" width="16" height="16"><a href="<%=homepage%>"><%=webname%>首页</a> 
            <img src="images/style.gif" align=absmiddle><a href="default1.asp">留言板方式查看 
          </a>配色：
          <select name="skin" id="skin" onChange="javascript:location.href='default.asp?skin='+document.all.skin.value">
              <option value="1" selected>蓝天白云</option>
              <option value="2" <%if skin=2 then response.write("selected")%>>水晶紫色</option>
              <option value="3" <%if skin=3 then response.write("selected")%>>秋意盎然</option>
              <option value="4" <%if skin=4 then response.write("selected")%>>绿野仙踪</option>
              <option value="5" <%if skin=5 then response.write("selected")%>>浓浓绿意</option>
              <option value="6" <%if skin=6 then response.write("selected")%>>橘子红了</option>
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
   Response.Write ">第一页</A>  "         
   Response.Write "<A HREF=default.asp?Pageno="&PrwePage&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">上一页</A>  "              
 End If        
 If pageno=1 or TSum>PageNo Then 
   NextPage=PageNo+1             
   Response.Write "<A HREF=default.asp?PageNo="&NextPage&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">下一页</A>  "
   Response.Write "<A HREF=default.asp?Pageno="&rs.PageCount&"&text="&text&"&option="&option1&"&jinghua="&jinghua
   Response.Write ">末一页</A>  "          
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
          <td width="40" class="tablebg<%=skin%>d"> <p align="center"><strong>状态</strong> 
          </td>
          <td width="40" class="tablebg<%=skin%>d"><div align="center"><strong>心情</strong></div></td>
          <td class="tablebg<%=skin%>c"><div align="center"><b>发 
          言 主 题</b></div></td>
          <td width="100" class="tablebg<%=skin%>d"> 
          <p align="center"><b>作&nbsp; 者</b> </td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><b>回复</b></td>
          <td width="40" align="center" class="tablebg<%=skin%>c"><b>阅读</b></td>
          <td width="200" align=center class="tablebg<%=skin%>d"> 
            <b>最后回复</b> </td>
          <%if (session("admin")=1) or (session("admin")=2) then%>
          <td width="39" align=center class="tablebg<%=skin%>d"><strong>操作</strong></td>
          <%end if%>
        </tr>
        <% DO WHILE NOT rs.EOF AND RowCount>0%>
        <tr class="tablebg<%=skin%>d"> 
          <td width="40" align="center"> 
            <%if rs11("show") and not rs("mark") then%>
            <img src="images/folder1.gif" alt="未审核留言"> 
            <%else if rs("top1")=true then%>
            <img src="images/top.gif" alt="固顶留言"> 
            <%else if rs("lock")=true then%>
            <img src="images/lock.gif" alt="锁定留言"> 
            <%else if rs("hf")>=10 then%>
            <img src="images/hotfolder.gif" alt="热点留言"> 
            <%else if DateDiff("d",rs("lastdate"),Now)=0 then%>
            <img src="images/newfolder.gif" alt="新留言"> 
            <%else%>
            <img src="images/folder.gif" alt="普通留言"> 
            <%end if%>
            <%end if%>
            <%end if%>
            <%end if%>
          <%end if%>          </td>
          <td width="40" height="28" align="center"><img src="images/<%=rs("pic")%>" ></td>
          <td width="348" class="tablebg<%=skin%>c" onmouseover="this.className='tablebg<%=skin%>d'" onmouseout="this.className='tablebg<%=skin%>c'"> 
            <%if rs("subject")="" then %>
            <a href="show.asp?id=<%=rs("id")%>">无标题</a> 
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
              无名氏 
              <%end if%>
              <%
			  Set rs2=server.createobject("ADODB.RECORDSET")
			  sql2="SELECT * FROM register where username='"&rs("username")&"'"
			  rs2.open sql2,conn,1,1
			  if not rs2.eof then			  
			  %>
              <%if Instr(rs2("level1"),"嘉宾")>0 then%>
              <img src="images/fbz.gif" alt="嘉宾" width="16" height="16"> 
              <%end if%>
              <%if Instr(rs2("level1"),"版主")>0 then%>
              <img src="images/bz.gif" alt="版主" width="16" height="16"> 
              <%end if%>			  
              <%if rs2("level1")="管理员" then%>
              <img src="images/gly.gif" alt="管理员" width="15" height="18"> 
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
          <TD width="40%" style="LETTER-SPACING: 1px"><div align="left"><%if (session("admin")=1) or (session("admin")=2) then%><a href=### onClick=checkAll()>全选</a> <a href=### onClick=checkNone() >全不选</a> <a href=### onClick=checkRev() >反选</a>
                <select name=act class=input2>
                  <option value="1">删除留言</option>
			      <option value="4">提到最前</option>
                  <option value="2">固定顶端</option>
			      <option value="5">取消固顶</option>
                  <option value="3">锁定留言</option>
			      <option value="6">解除锁定</option>
                  <option value="7">审核留言</option>
                  <option value="8">取消审核</option>
                  <option value="9">设为精华</option>
                  <option value="10">取消精华</option>
                </select>
                <input name="goto" type=submit class=input2 id="goto2" value="确定">
          <%end if%></div></TD>
          <TD width="60%" style="LETTER-SPACING: 1px">
            <div align="right">
                <% call showpage(url,rs.RECORDCOUNT,maxperpage,false,true,"条主题") %>
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
                搜索： 
                  <INPUT 
      class=input1 size=25 name=text>
                  <INPUT name=option type=radio value=1 CHECKED>
                发言主题 
                <INPUT type=radio value=2 name=option>
                发言内容 
                <INPUT type=radio value=3 name=option>
回复内容
<input type=radio value=4 name=option>
                注册名称
                <%if (session("admin")=1) or (session("admin")=2) then%>
                <input type=radio value=5 name=option>
待审留言
<%end if%>                
<INPUT name="submit" type=submit class=input2 value=" 搜 索 ">
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
