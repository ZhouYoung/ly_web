<%@language=vbscript codepage=936 %>
<!--#INCLUDE FILE="config.asp"-->
<!--#INCLUDE FILE="background.asp"-->
<!--#INCLUDE FILE="md5.asp"-->
<!--#INCLUDE FILE="ubbcode.asp"-->
<!--#INCLUDE FILE="ubblabel.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>编辑留言</title>
<link href="1.css" rel="stylesheet" type="text/css">
</head>
<body onkeydown="if(event.keyCode==13 && event.ctrlKey) if(save_onclick1())document.form.submit()">
<table border=0 width=100% align=center>
  <tr> 
    <td align=center> 
      <!--#INCLUDE FILE="top.asp"-->
  </tr>
  <tr> 
    <td align=center><hr size=1 width=100% noshade color=#C0C0C0></tr>
</table>
  <SCRIPT language=javascript>
function  save_onclick()
{
  document.form.Content.value=editor.HtmlEdit.document.body.innerHTML;
  var strTemp = document.form.password.value;
  if (strTemp.length == 0 )
  {
      alert("请填写密码");
      document.form.password.focus();
      return false;
  }
  var strTemp = document.form.Content.value;
  if (strTemp.length == 0 )
  {
      alert("请填写留言内容");
      return false;
  }
  return true;  
}
function  save_onclick1()
{
  var strTemp = document.form.password.value;
  if (strTemp.length == 0 )
  {
      alert("请填写密码");
      document.form.password.focus();
      return false;
  }
  var strTemp = document.form.Content.value;
  if (strTemp.length == 0 )
  {
      alert("请填写留言内容");
      return false;
  }
  return true;  
}
function guestpreview()
{
document.preview.content.value=document.form.Content.value;
var popupWin = window.open('GuestPreview.asp', 'GuestPreview', 'scrollbars=yes,width=620,height=230');
document.preview.submit()
}
</SCRIPT>
</p>
<% Set rs=server.createobject("ADODB.RECORDSET")
   rs.open "Select * From guest where id="&request("id"),Conn,2,3
   if session("useridname")<>rs("username") then if session("admin")<>1 then if session("admin")<>2 then response.Redirect "error.asp?info=非作者本人不能修改！"
if request.Form<>"" then
	 password=Trim(request.Form("password"))
	 pic=Trim(request.Form("pic"))
     Subject=Trim(HTMLEncode(Request.Form("Subject")))
     content=Request.Form("content")
	 if (rs11("lylength")<>0) and (strLength(UserName)>rs11("lylength")) then response.Redirect "error.asp?info=留言长度大于"&rs11("lylength")&"个汉字！"
	 username=Trim(request.Form("username"))
	 if UserName="" then response.Redirect "error.asp?info=请输入用户名！"
	 id=request.Form("id")
	 secret=request.Form("secret")
	 fontcolor=Trim(request.Form("fontcolor"))
	 if (session("admin")=1) or (session("admin")=2) then lastdate=request.Form("lastdate")
	 if secret<>1 then secret=0
	 if rs11("muieditor")=0 or rs11("muieditor")=2 then
		content=HTMLEncode(content)
	 end if
     lydate =now
	 if homepage="http://" then homepage="" 
	 rs.close
	 rs.open "Select * From register where username='" & username& "'" ,Conn,2,3  
	 if session("admin")<>1 then if session("admin")<>2 then if md5(password)<>rs("password1") then response.Redirect "error.asp?info=用户名或密码错误！"
      rs.close
	  rs.open "Select * From guest where id=" & id,Conn,2,3
		rs("subject")=subject
	strSiteUrl=request.ServerVariables("HTTP_REFERER")
	strSiteUrl=lcase(left(strSiteUrl,instrrev(strSiteUrl,"/")))
	Content=replace(Content,strSiteUrl,"")
	 content=replace(content,"'","""")
		rs("content")=content
		rs("lydate")=lydate
		rs("pic")=pic
		rs("secret")=secret
		rs("fontcolor")=fontcolor
		rs("edituser")=session("useridname")
		rs("edittime")=now
		if (session("admin")=1) or (session("admin")=2) then rs("lastdate")=lastdate
    	rs.update
    	rs.close
set rs=nothing
conn.close
set conn=nothing		
     response.Redirect "guest_edit_post_ok.asp?id="&id
end if
	recontent=rs("content")
	recontent=replace(recontent,"<BR>",vbCrLf)
	recontent=replace(recontent,"&nbsp;"," ")
	recontent=replace(recontent,"""","'")
%>
<table border=0 width=100% align=center>
  <tr>
    <td width="3%" align=left><font color="#FF0000">&nbsp;<img src="images/home.gif" border=0></font></td>
    <td width="8%" align=left><a href="<%if session("list")=0 then%>default.asp<%else%>default1.asp<%end if%>">留言首页</a></td>
    <td width="89%" align=right>
      <!--#INCLUDE FILE="link.asp"-->
    </td>
</table>
<form action="" method="POST" name="form" id="form" <%if rs11("muieditor")=1 then%>onsubmit="return save_onclick()"<%else%>onsubmit="return save_onclick1()"<%end if%>>
  <input type="hidden" name="form" value="SaveData">
  <input type="hidden" name="D_Date" value="<%=cstr(now())%>">
  <table width="100%" align="center" cellpadding="5" cellspacing="1" class="tablebg<%=skin%>b">
    <tr class="tablebg<%=skin%>a">
      <td colspan="2">
        <p align="center"><strong>编辑留言</strong></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td width="213" align="center"><div align="left"><strong>用户名：</strong></div></td>
      <td width="734" height="28" align="center"><div align="left"> <%=rs("username")%> </div></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td width="213" align="center"><div align="left"><strong>密码：</strong></div></td>
      <td height="28" align="center"><div align="left">
          <input name="password" type="password" class="input1" id="password2" value="<%=session("useridpassword")%>" size="15">
<%if session("useridname")="" then%>(必填，否则不能修改)<%end if%></div></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td width="213" align="center"><div align="left"><strong>心情：</strong></div></td>
      <td height="28" align="center"><div align="left">
          <table border="0" width="66%" cellspacing="1" cellpadding="0">
            <tr>
              <td width="5%" align="center"><input name="pic" type="radio" value="p16.gif" checked>
              </td>
              <td width="5%"><img src="images/p16.gif" width="22" height="22" border="0"></td>
              <td width="5%" align="center"><input type="radio" value="p2.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p2.gif" width="19" height="19" border="0"></td>
              <td width="5%" align="center"><input type="radio" value="p3.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p3.gif" width="19" height="19" border="0"></td>
              <td width="5%" align="center"><input type="radio" value="p4.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p4.gif" width="19" height="19" border="0"></td>
              <td width="5%"><input type="radio" value="p5.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p5.gif" width="19" height="19" border="0"></td>
              <td width="5%"><input type="radio" value="p6.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p6.gif" width="19" height="19" border="0"></td>
              <td width="5%"><input type="radio" value="p7.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p7.gif" width="22" height="22" border="0"></td>
              <td width="5%"><input type="radio" value="p8.gif" name="pic">
              </td>
              <td width="5%"><img src="images/p8.gif" width="22" height="22" border="0"></td>
              <td width="5%"><input type="radio" value="p9.gif" name="pic">
              </td>
              <td width="5%"><img border="0" src="images/p9.gif" width="19" height="19"></td>
              <td width="7%"><input type="radio" value="p10.gif" name="pic"></td>
              <td width="3%"><img border="0" src="images/p10.gif" width="19" height="19"></td>
              <td width="1%"><input type="radio" value="p11.gif" name="pic">
              </td>
              <td width="2%"><img border="0" src="images/p11.gif" width="22" height="22"></td>
            </tr>
            <tr>
              <td align="center"><input type="radio" value="p12.gif" name="pic">
              </td>
              <td><img border="0" src="images/p12.gif" width="19" height="19"></td>
              <td align="center"><input type="radio" value="p13.gif" name="pic">
              </td>
              <td><img border="0" src="images/p13.gif" width="19" height="19"></td>
              <td align="center"><input type="radio" value="p14.gif" name="pic">
              </td>
              <td><img border="0" src="images/p14.gif" width="22" height="22"></td>
              <td align="center"><input type="radio" value="p15.gif" name="pic">
              </td>
              <td><img border="0" src="images/p15.gif" width="22" height="22"></td>
              <td><input type="radio" value="p1.gif" name="pic">
              </td>
              <td><img border="0" src="images/p1.gif" width="22" height="22"></td>
              <td><input type="radio" value="p17.gif" name="pic">
              </td>
              <td><img border="0" src="images/p17.gif" width="22" height="22"></td>
              <td><input name="pic" type="radio" value="p18.gif">
              </td>
              <td><img border="0" src="images/p18.gif" width="22" height="22"></td>
              <td><input type="radio" value="p19.gif" name="pic">
              </td>
              <td><img border="0" src="images/p19.gif" width="22" height="22"></td>
              <td><input type="radio" value="p20.gif" name="pic">
              </td>
              <td><img border="0" src="images/p20.gif" width="22" height="22"></td>
              <td><input type="radio" value="p21.gif" name="pic"></td>
              <td><img border="0" src="images/p21.gif" width="22" height="22"></td>
              <td><input type="radio" value="p22.gif" name="pic">
              </td>
              <td><img border="0" src="images/p22.gif" width="22" height="22"></td>
            </tr>
          </table>
      </div></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td align="center"><div align="left"><strong>留言标题：</strong></div></td>
      <td height="28" align="center"><div align="left"><font color="#00FF00">
        <input name="subject" type="text" class="input1" id="subject2" value="<%=rs("subject")%>" size="50" maxlength="50" >
        <input name="username" type="hidden" id="username" value="<%=rs("username")%>">
        <input name="id" type="hidden" id="id2" value="<%=request("id")%>">
        <%if (session("admin")=1) or (session("admin")=2) then%>
        <select name="fontcolor" id="fontcolor">
          <option selected>标题醒目</option>
          <option value="red" <%if rs("fontcolor")="red" then response.write("selected")%>>红色醒目</option>
          <option value="green" <%if rs("fontcolor")="green" then response.write("selected")%>>绿色醒目</option>
          <option value="blue" <%if rs("fontcolor")="blue" then response.write("selected")%>>蓝色醒目</option>
        </select>
        <%end if%>
</font></div></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td width="213" align="center"><div align="left"><strong>留言内容：<br>
        </strong><%if rs11("muieditor")=1 then%>·换行请按Shift+Enter <br>
·另起一段请按Enter<%end if%><br>
·支持UBB标签</div></td>
      <td height="28" align="center"><div align="left">
	  <%if rs11("muieditor")=1 then%>
		<textarea name="Content" style="display:none"></textarea> 
      <iframe ID="editor" src="editor.asp?Action=M1&ArticleID=<%=rs("id")%>" frameborder=1 scrolling=no width="620" height="405"></iframe>
	  <%else if rs11("muieditor")=2 then
	  call showubb()%>
	  <textarea name="Content" cols="60" rows="5" id="Content"><%=recontent%></textarea>
	  <%else%>
	  <textarea name="Content" cols="60" rows="5" id="Content"><%=recontent%></textarea>
	  <%end if
	  end if%>      
	  </div></td>
    </tr>
    <tr class="tablebg<%=skin%>d">
      <td width="213" align="center"><div align="left"><strong>留言功能：</strong></div></td>
      <td height="28" align="center"><div align="left">
          <input name="secret" type="checkbox" id="secret3" value="1" <%if rs("secret") then%>checked<%end if%>>
悄悄话(只有<strong>登录</strong>后才可看到自己的留言及回复的内容)</div></td>
    </tr>
    <%if (session("admin")=1) or (session("admin")=2) then%>
	<tr class="tablebg<%=skin%>d">
      <td align="center"><div align="left"><b>最后更新：</b><br>
        此项仅管理员或版主可见</div>
      </td>
      <td height="28" align="center"><div align="left">
        <input name="lastdate" class="input1" type="text" id="lastdate" value="<%=rs("lastdate")%>">
      </div></td>
    </tr>
	<%end if%>
    <tr class="tablebg<%=skin%>d">
      <td height="28" colspan="2" align="center">　
        <input name="join" type="submit" class="input2" id="join3" value=" 提 交 " >
　
<%if rs11("muieditor")=2 then%>
<input name="join" type="button" class="input2" id="join3" value=" 预 览 " onclick=guestpreview()>
　
<%end if%>
<input name="B12" type="reset" class="input2" id="B123"  value=" 重 写 "  >
(Ctrl+Enter提交)
</td>
    </tr>
  </table>
  <table border=0 width=100% align=center>
    <tr> 
      <td height=12><HR SIZE=1 WIDTH=100% NOSHADE COLOR=#C0C0C0></td>
    </tr>
    <tr> 
      <td align=center> 
	  <%rs.close
	  set rs=nothing%>
        <!--#INCLUDE FILE="bottom.asp"-->
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
		<form name=preview action="GuestPreview.asp" method=post target=GuestPreview>
		<input type=hidden name=title value=><input type=hidden name=content value=>
		</form>
</body>
</html>
<%
set rs=nothing
%>