<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>插入下拉菜单</title>
<style type="text/css">
body, a, table, div, span, td, th, input, select{font:9pt;font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;}
.text{border:1px solid #aaaaaa;}
</style>
<script language="JavaScript">
  function flash(val){;
  window.returnValue=val;
  window.close();
   }
</script>

<script language="VBScript">
function mymenu()
  lr="<select name=menuD1  onChange="&chr(34)&"var jmpURL=this.options[this.selectedIndex].value; if(jmpURL!='') {window.open(jmpURL);} else {this.selectedIndex=0;}"&chr(34)&" >"

  menu1=s1.value
  menu1=replace(meNu1,chr(13)&chr(10),"|")
  menu1=replace(meNu1,"；",";")
  menu2=mydata(menu1,"|")
  for li=0 to 99
    if menu2(li)="" then exit for
    menu3=mydata(menu2(li),";")
    if menu3(1)<>"" then
       lr=lr&"<option value='"&menu3(1)&"'>"&menu3(0)&"</option>"
    else
       lr=lr&"<option value='"&menu3(0)&"'>"&menu3(0)&"</option>"
    end if
  next
  lr=lr&"</select>"
  call flash(lr)

end function

FUNCTION  mydata(inda,fgda)
  dim myda(100)
  str=instr(inda,fgda)
  if str=0 then
      myda(0)=inda
  else
     for dai=0 to  99
       myda(dai)=left(inda,str-1)
       INDA=mid(inda,str+1,len(inda))
       str=instr(inda,fgda)
       if str=0 then
          myda(dai+1)=inda
          exit for
       end if
     next
  end if
  mydata=myda
end function


</script>


</head>

<body leftmargin="15">
<div align="center">
  <center>
<table border="1" cellspacing="0" width="100%" id="AutoNumber1" cellpadding="0" bordercolorlight="#000000" bordercolordark="#FFFFFF">
  <tr>
    <td width="100%">
    <table border="0" cellspacing="0" width="100%" id="AutoNumber2" style="font-size: 9pt">
      <tr>
        <td width="100%">格式：每行为一个选项，用“<font color="#FF0000">;</font>”分隔“<font color="#FF0000">;</font>”前是菜单名称，“<font color="#FF0000">;</font>”后是点击后指向的地址
        ，出现空行时表示菜单结束</td>
      </tr>
      <tr>
        <td width="100%" align="center"><textarea rows="9" name="S1" cols="72"></textarea></td>
      </tr>
      <tr>
        <td width="100%" align="center">
 <input type=button onClick=mymenu() value="确　定" name="submit">
 <input type=button onClick='window.close();' value="取　消" name="button">
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

  </center>
</div>

</body>

</html>