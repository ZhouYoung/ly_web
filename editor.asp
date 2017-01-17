<html>
<head>
<title>HTML在线编辑器</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="STYLESHEET" type="text/css" href="editor.css">
<script language="JavaScript" type="text/JavaScript">
//菜单列表
var menu_table="<table width='100%' cellspacing='0' cellpadding='2'>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_cr.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertTable()'>插入表格</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_sx.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tableProp()'>表格属性</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_sx2.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='cellProp()'>单元格属性</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_tr.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(1)'>插入一行</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_trdel.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(2)'>删除一行</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_td.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(3)'>插入一列</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_tddel.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(4)'>删除一列</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_hby.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(5)'>向右合并</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_hbx.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(6)'>向下合并</a></td></tr>";
menu_table+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/table_cf.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='tablecommand(7)'>拆分单元格</a></td></tr>";
menu_table+="</table>";
var menu_chars="<table width='100%' cellspacing='0' cellpadding='2'>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars1.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(0)'>换行符</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars2.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(1)'>版权符号</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars3.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(2)'>注册商标</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars4.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(3)'>商标符号</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars5.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(4)'>圆点</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars6.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(5)'>省略号</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars7.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(6)'>破折号</a></td></tr>";
menu_chars+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/chars8.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertChars(7)'>中划线</a></td></tr>";
menu_chars+="</table>";
var menu_eq="<table width='100%' cellspacing='0' cellpadding='2'>";
menu_eq+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/eq1.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InsertEQ()'>插入公式</a></td></tr>";
menu_eq+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><td><img src='Images/Editor/eq2.gif' width='16' height='16' align='absmiddle'></td><td><a href='#' onclick='InstallEQ()'>安装公式编辑器插件</a></td></tr>";
menu_eq+="</table>";

//下拉菜单相关代码
 var h;
 var w;
 var l;
 var t;
 var topMar = 1;
 var leftMar = -2;
 var space = 1;
 var isvisible;
 var MENU_SHADOW_COLOR='#E1F4EE';//定义下拉菜单阴影色
 var global = window.document
 global.fo_currentMenu = null
 global.fo_shadows = new Array

function HideMenu() 
{
 var mX;
 var mY;
 var vDiv;
 var mDiv;
	if (isvisible == true)
{
		vDiv = document.all("menuDiv");
		mX = window.event.clientX + document.body.scrollLeft;
		mY = window.event.clientY + document.body.scrollTop;
		if ((mX < parseInt(vDiv.style.left)) || (mX > parseInt(vDiv.style.left)+vDiv.offsetWidth) || (mY < parseInt(vDiv.style.top)-h) || (mY > parseInt(vDiv.style.top)+vDiv.offsetHeight)){
			vDiv.style.visibility = "hidden";
			isvisible = false;
		}
}
}

function ShowMenu(vMnuCode,tWidth) {
	vSrc = window.event.srcElement;
	vMnuCode = "<table id='submenu' cellspacing=1 cellpadding=3 style='width:"+tWidth+"' class=menu onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=MenuBody>" + vMnuCode + "</td></tr></table>";

	h = vSrc.offsetHeight;
	w = vSrc.offsetWidth;
	l = vSrc.offsetLeft + leftMar+4;
	t = vSrc.offsetTop + topMar + h + space-2;
	vParent = vSrc.offsetParent;
	while (vParent.tagName.toUpperCase() != "BODY")
	{
		l += vParent.offsetLeft;
		t += vParent.offsetTop;
		vParent = vParent.offsetParent;
	}

	menuDiv.innerHTML = vMnuCode;
	menuDiv.style.top = t;
	menuDiv.style.left = l;
	menuDiv.style.visibility = "visible";
	isvisible = true;
    makeRectangularDropShadow(submenu, MENU_SHADOW_COLOR, 4)
}

function makeRectangularDropShadow(el, color, size)
{
	var i;
	for (i=size; i>0; i--)
	{
		var rect = document.createElement('div');
		var rs = rect.style
		rs.position = 'absolute';
		rs.left = (el.style.posLeft + i) + 'px';
		rs.top = (el.style.posTop + i) + 'px';
		rs.width = el.offsetWidth + 'px';
		rs.height = el.offsetHeight + 'px';
		rs.zIndex = el.style.zIndex - i;
		rs.backgroundColor = color;
		var opacity = 1 - i / (i + 1);
		rs.filter = 'alpha(opacity=' + (100 * opacity) + ')';
		el.insertAdjacentElement('afterEnd', rect);
		global.fo_shadows[global.fo_shadows.length] = rect;
	}
}
function scolor(obj)
{
  obj.style.backgroundColor="";
}
function rcolor(obj)
{
  obj.style.backgroundColor="#eeeeee";
}
</script>
</head>

<body bgcolor="#FFFFFF" leftmargin='0' topmargin='0' onmousemove='HideMenu()'>
<div id=menuDiv style='Z-INDEX: 1000; VISIBILITY: hidden; WIDTH: 1px; POSITION: absolute; HEIGHT: 1px; BACKGROUND-COLOR: #9cc5f8'></div>
<div class="yToolbar"> 
  <div class="TBHandle"> </div>
  <div class="Btn" TITLE="全部选择" LANGUAGE="javascript" onclick="format('selectall')"> 
    <img class="Ico" src="images/editor/selectall.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="剪切" LANGUAGE="javascript" onclick="format('cut')"> <img class="Ico" src="images/editor/cut.gif" > 
  </div>
  <div class="Btn" TITLE="复制" LANGUAGE="javascript" onclick="format('copy')"> 
    <img class="Ico" src="images/editor/copy.gif" > </div>
  <div class="Btn" TITLE="粘贴" LANGUAGE="javascript" onclick="format('paste')"> 
    <img class="Ico" src="images/editor/paste.gif" > </div>
  <div class="Btn" TITLE="从word中粘贴" LANGUAGE="javascript" onclick="word()"> <img class="Ico" src="images/editor/wordpaste.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="查找替换" LANGUAGE="javascript" onclick="findstr()"><img class="Ico" src="images/editor/findreplace.gif" ></div>
  <div class="Btn" TITLE="删除" LANGUAGE="javascript" onclick="format('delete')"><img class="Ico" src="images/editor/del.gif" ></div>
  <div class="Btn" TITLE="删除文字格式" LANGUAGE="javascript" onclick="format('RemoveFormat')"><img class="Ico" src="images/editor/clear.gif" ></div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="撤消" LANGUAGE="javascript" onclick="format('undo')"> 
    <img class="Ico" src="images/editor/undo.gif" > </div>
  <div class="Btn" TITLE="恢复" LANGUAGE="javascript" onclick="format('redo')"> 
    <img class="Ico" src="images/editor/redo.gif" > </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="计算器" LANGUAGE="javascript" onclick="calculator()"> <img class="Ico" src="images/editor/calculator.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="保存"	LANGUAGE="javascript" onclick="save()"> 
    <img class="Ico" src="images/editor/save.gif" > </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="查看帮助" LANGUAGE="javascript" onclick="help()"><img class="Ico" src="images/editor/help.gif" > 
  </div>
  <div class="TBSep"></div>
  <iframe class="TBGen" style="top:2px" ID="UploadFiles" src="upload_article.asp" frameborder=0 scrolling=no width="250" height="25"></iframe>
</div>

<div class="yToolbar"> 
  <div class="TBHandle"> </div>
  <select ID="formatSelect" class="TBGen" onchange="format('FormatBlock',this[this.selectedIndex].value);this.selectedIndex=0">
    <option selected>段落格式</option>
    <option VALUE="&lt;P&gt;">普通</option>
    <option VALUE="&lt;PRE&gt;">已编排格式</option>
    <option VALUE="&lt;H1&gt;">标题一</option>
    <option VALUE="&lt;H2&gt;">标题二</option>
    <option VALUE="&lt;H3&gt;">标题三</option>
    <option VALUE="&lt;H4&gt;">标题四</option>
    <option VALUE="&lt;H5&gt;">标题五</option>
    <option VALUE="&lt;H6&gt;">标题六</option>
    <option VALUE="&lt;H7&gt;">标题七</option>
  </select>
  <select id="FontName" class="TBGen" onchange="format('fontname',this[this.selectedIndex].value);this.selectedIndex=0">
    <option selected>字体</option>
    <option value="宋体">宋体</option>
    <option value="黑体">黑体</option>
    <option value="楷体_GB2312">楷体</option>
    <option value="仿宋_GB2312">仿宋</option>
    <option value="隶书">隶书</option>
    <option value="幼圆">幼圆</option>
    <option value="Arial">Arial</option>
    <option value="Arial Black">Arial Black</option>
    <option value="Arial Narrow">Arial Narrow</option>
    <option value="Brush Script	MT">Brush Script MT</option>
    <option value="Century Gothic">Century Gothic</option>
    <option value="Comic Sans MS">Comic Sans MS</option>
    <option value="Courier">Courier</option>
    <option value="Courier New">Courier New</option>
    <option value="MS Sans Serif">MS Sans Serif</option>
    <option value="Script">Script</option>
    <option value="System">System</option>
    <option value="Times New Roman">Times New Roman</option>
    <option value="Verdana">Verdana</option>
    <option value="Wide	Latin">Wide Latin</option>
    <option value="Wingdings">Wingdings</option>
  </select>
  <select id="FontSize" class="TBGen" onchange="format('fontsize',this[this.selectedIndex].value);this.selectedIndex=0">
    <option selected>字号</option>
    <option value="7">一号</option>
    <option value="6">二号</option>
    <option value="5">三号</option>
    <option value="4">四号</option>
    <option value="3">五号</option>
    <option value="2">六号</option>
    <option value="1">七号</option>
  </select>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="字体颜色" LANGUAGE="javascript" onclick="foreColor()"><img class="Ico" src="images/editor/fgcolor.gif" ></div>
  <div class="Btn" TITLE="文字背景色" LANGUAGE="javascript" onclick="backColor()"><img class="Ico" src="images/editor/fgbgcolor.gif" ></div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="加粗" LANGUAGE="javascript" onclick="format('bold')"> 
    <img class="Ico" src="images/editor/bold.gif" > </div>
  <div class="Btn" TITLE="斜体" LANGUAGE="javascript" onclick="format('italic')"> 
    <img class="Ico" src="images/editor/italic.gif" > </div>
  <div class="Btn" TITLE="下划线" LANGUAGE="javascript" onclick="format('underline')"> 
    <img class="Ico" src="images/editor/underline.gif" > 
  </div>
  <div class="Btn" TITLE="删除线" LANGUAGE="javascript" onclick="format('StrikeThrough')"> 
    <img class="Ico" src="images/editor/strikethrough.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="左对齐" NAME="Justify" LANGUAGE="javascript" onclick="format('justifyleft')"><img class="Ico" src="images/editor/aleft.gif" ></div>
  <div class="Btn" TITLE="居中" NAME="Justify" LANGUAGE="javascript" onclick="format('justifycenter')"><img class="Ico" src="images/editor/acenter.gif" ></div>
  <div class="Btn" TITLE="右对齐" NAME="Justify" LANGUAGE="javascript" onclick="format('justifyright')"><img class="Ico" src="images/editor/aright.gif" ></div>
  <div class="Btn" TITLE="两端对齐" NAME="Justify" LANGUAGE="javascript" onclick="format('JustifyFull')"><img class="Ico" src="images/editor/JustifyFull.gif" ></div>
  <div class="Btn" TITLE="绝对或相对位置" LANGUAGE="javascript" onclick="absolutePosition()"><img class="Ico" src="images/editor/abspos.gif" ></div>
</div>
<div class="yToolbar"> 
  <div class="TBHandle"> </div>
  <div class="Btn" TITLE="字体变大" LANGUAGE="javascript" onclick="inserteshu('big')"><img class="Ico" src="images/editor/tobig.gif" ></div>
  <div class="Btn" TITLE="字体变小" LANGUAGE="javascript" onclick="inserteshu('small')"><img class="Ico" src="images/editor/tosmall.gif" ></div>
  <div class="Btn" TITLE="上标" LANGUAGE="javascript" onclick="format('superscript')"><img class="Ico" src="images/editor/sup.gif" ></div>
  <div class="Btn" TITLE="下标" LANGUAGE="javascript" onclick="format('subscript')"><img class="Ico" src="images/editor/sub.gif" ></div>
  <div class="Btn" TITLE="编号" LANGUAGE="javascript" onclick="format('insertorderedlist')"> 
    <img class="Ico" src="images/editor/num.gif" > </div>
  <div class="Btn" TITLE="项目符号" LANGUAGE="javascript" onclick="format('insertunorderedlist')"> 
    <img class="Ico" src="images/editor/list.gif" > </div>
  <div class="Btn" TITLE="减少缩进量" LANGUAGE="javascript" onclick="format('outdent')"> 
    <img class="Ico" src="images/editor/outdent.gif" > </div>
  <div class="Btn" TITLE="增加缩进量" LANGUAGE="javascript" onclick="format('indent')"> 
    <img class="Ico" src="images/editor/indent.gif" > </div>
  <div class="Btn" TITLE="上移一层" LANGUAGE="javascript" onclick="zIndex('forward')"><img class="Ico" src="images/editor/forward.gif" > 
  </div>
  <div class="Btn" TITLE="下移一层" LANGUAGE="javascript" onclick="zIndex('backward')"><img class="Ico" src="images/editor/backward.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="插入超级连接" LANGUAGE="javascript" onclick="UserDialog('CreateLink')"> 
    <img class="Ico" src="images/editor/url.gif" > </div>
  <div class="Btn" TITLE="取消超级链接" LANGUAGE="javascript" onclick="UserDialog('unLink')"> 
    <img class="Ico" src="images/editor/nourl.gif" > </div>
  <div class="Btn" TITLE="插入普通水平线" LANGUAGE="javascript" onclick="format('InsertHorizontalRule')"> 
    <img class="Ico" src="images/editor/line.gif" > </div>
  <div class="Btn" TITLE="插入特殊水平线" LANGUAGE="javascript" onclick="hr()"><img class="Ico" src="images/editor/sline.gif" > 
  </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="插入输入框" LANGUAGE="javascript" onclick="Insergongneng('input')"> 
    <img class="Ico" src="images/editor/FormText.gif" > 
  </div>
  <div class="Btn" TITLE="插入文字输入区" LANGUAGE="javascript" onclick="Insergongneng('textarea')"> 
    <img class="Ico" src="images/editor/FormTextArea.gif" > 
  </div>
  <div class="Btn" TITLE="插入单选钮" LANGUAGE="javascript" onclick="Insergongneng('radio')"> 
    <img class="Ico" src="images/editor/FormRadio.gif" > 
  </div>
  <div class="Btn" TITLE="插入复选框" LANGUAGE="javascript" onclick="Insergongneng('checkbox')"> 
    <img class="Ico" src="images/editor/FormCheckbox.gif" > 
  </div>
  <div class="Btn" TITLE="插入下拉菜单" LANGUAGE="javascript" onclick="Insermenu('<%=now()%>')"> 
    <img class="Ico" src="images/editor/menu.gif" > </div>
  <div class="Btn" TITLE="插入按钮" LANGUAGE="javascript" onclick="Insergongneng('bottom')"> 
    <img class="Ico" src="images/editor/FormButton.gif" > 
  </div>
</div>

<div class="yToolbar"> 
  <div class="TBHandle"> </div>
  <div class="Btn" TITLE="插入手动分页符" LANGUAGE="javascript" onclick="page()"><img class="Ico" src="images/editor/page.gif" > 
  </div>
  <div class="Btn" TITLE="插入当前日期" LANGUAGE="javascript" onclick="nowdate()"> <img class="Ico" src="images/editor/date.gif" > 
  </div>
  <div class="Btn" TITLE="插入当前时间" LANGUAGE="javascript" onclick="nowtime()"> <img class="Ico" src="images/editor/time.gif" > 
  </div>
  <div class="Btn" TITLE="插入栏目框" LANGUAGE="javascript" onclick="FIELDSET()"><img class="Ico" src="images/editor/fieldset.gif" > 
  </div>
  <div class="Btn" TITLE="插入网页" LANGUAGE="javascript" onclick="iframe()"><img class="Ico" src="images/editor/htm.gif" > 
  </div>
  <div class="Btn" TITLE="插入Excel表格" LANGUAGE="javascript" onclick="excel()"><img class="Ico" src="images/editor/excel.gif" > 
  </div>
  <div class="Btn" TITLE="插入表格" LANGUAGE="javascript" onclick="InsertTable()"> 
    <img class="Ico" src="images/editor/table.gif" > </div>
  <div class="BtnMenu" TITLE="表格操作" LANGUAGE="javascript" onclick="ShowMenu(menu_table,100)"> 
    <img class="Ico" src="images/editor/arrow.gif" WIDTH="5" HEIGHT="18"> </div>
  <div class="Btn" TITLE="插入换行符号" LANGUAGE="javascript" onclick="InsertChars(0)"><img class="Ico" src="images/editor/chars.gif" ></div>
  <div class="Btn" TITLE="插入公式" LANGUAGE="javascript" onclick="InsertEQ()"><img class="Ico" src="images/editor/eq.gif" ></div>
  <div class="BtnMenu" TITLE="公式操作" LANGUAGE="javascript" onclick="ShowMenu(menu_eq,100)"><img class="Ico" src="images/editor/arrow.gif"></div>
  <div class="Btn" TITLE="插入特殊符号" LANGUAGE="javascript" onclick="Insertlr('editor_tsfh.asp',300,200,<%=(now()-date())*24*60*60*1000%>)"><img class="Ico" src="images/editor/symbol.gif" ></div>
  <div class="Btn" TITLE="插入表情符号" LANGUAGE="javascript" onclick="inseremot()"><img class="Ico" src="images/editor/Emot.gif" ></div>
  <div class="Btn" TITLE="插入图片，支持格式为：jpg、gif、bmp、png等" LANGUAGE="javascript" onclick="pic()"><img class="Ico" src="images/editor/img.gif" ></div>
  <div class="Btn" TITLE="插入flash多媒体文件" LANGUAGE="javascript" onclick="swf()"><img class="Ico" src="images/editor/flash.gif" ></div>
  <div class="Btn" TITLE="插入视频文件，支持格式为：avi、wmv、asf" LANGUAGE="javascript" onclick="wmv()"><img class="Ico" src="images/editor/wmv.gif" ></div>
  <div class="Btn" TITLE="插入RealPlay文件，支持格式为：rm、ra、ram" LANGUAGE="javascript" onclick="rm()"><img class="Ico" src="images/editor/rm.gif" ></div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="代码样式" LANGUAGE="javascript" onclick="Insercode()"> <img class="Ico" src="images/editor/code.gif" > 
  </div>
  <div class="Btn" TITLE="引用样式" LANGUAGE="javascript" onclick="Inserquote()"> 
    <img class="Ico" src="images/editor/quote.gif" > </div>
  <div class="TBSep"></div>
  <div class="Btn" TITLE="插入或修改字幕" LANGUAGE="javascript" onclick="insermarquee()"> 
    <img class="Ico" src="images/editor/Marquee.gif" > </div>
  <div class="Btn" TITLE="打印" LANGUAGE="javascript" onclick="format('Print')"> 
    <img class="Ico" src="images/editor/print.gif" > </div>
</div>

<iframe class="HtmlEdit" ID="HtmlEdit" src="Content.asp?Action=<%=trim(request("Action"))%>&ArticleID=<%=trim(request("ArticleID"))%>&id=<%=request("id")%>&id1=<%=request("id1")%>" MARGINHEIGHT="1" MARGINWIDTH="1" style="width=100%; height=266;"> </iframe>
<iframe class="HtmlEdit" ID="HtmlPreview" MARGINHEIGHT="1" MARGINWIDTH="1" style="width=100%; height=266; display:none"> </iframe>
<img id="setMode0" src="Images/Editor/Editor2.gif" width="59" height="20" onClick="setMode(0)">
<img id="setMode1" src="Images/Editor/html.gif" width="59" height="20" onClick="setMode(1)">
<img id="setMode2" src="Images/Editor/browse.gif" width="59" height="20" onClick="setMode(2)">
<script type="text/javascript">
SEP_PADDING = 5;
HANDLE_PADDING = 7;

var yToolbars =	new Array();
var YInitialized = false;
var bLoad=false;
var pureText=true;
var bodyTag="<head><style type=\"text/css\">body {font-size:	9pt}</style><meta http-equiv=Content-Type content=\"text/html; charset=gb2312\"></head><BODY bgcolor=\"#FFFFFF\" MONOSPACE>";
var EditMode=true;
var SourceMode=false;
var PreviewMode=false;
var CurrentMode=0;
function document.onreadystatechange(){
  if (YInitialized) return;
  YInitialized = true;

  var i, s, curr;

  for (i=0; i<document.body.all.length;	i++)
  {
    curr=document.body.all[i];
    if (curr.className == "yToolbar")
    {
      InitTB(curr);
      yToolbars[yToolbars.length] = curr;
    }
  }

  DoLayout();
  window.onresize = DoLayout;

  //HtmlEdit.document.open();
  //HtmlEdit.document.write(bodyTag);
  //HtmlEdit.document.close();
  HtmlEdit.document.designMode="On";
}

function InitBtn(btn)
{
  btn.onmouseover = BtnMouseOver;
  btn.onmouseout = BtnMouseOut;
  btn.onmousedown = BtnMouseDown;
  btn.onmouseup	= BtnMouseUp;
  btn.ondragstart = YCancelEvent;
  btn.onselectstart = YCancelEvent;
  btn.onselect = YCancelEvent;
  btn.YUSERONCLICK = btn.onclick;
  btn.onclick =	YCancelEvent;
  btn.YINITIALIZED = true;
  return true;
}

function InitBtnMenu(BtnMenu)
{
  BtnMenu.onmouseover = BtnMenuMouseOver;
  BtnMenu.onmouseout = BtnMenuMouseOut;
  BtnMenu.onmousedown = BtnMenuMouseDown;
  BtnMenu.onmouseup	= BtnMenuMouseUp;
  BtnMenu.ondragstart = YCancelEvent;
  BtnMenu.onselectstart = YCancelEvent;
  BtnMenu.onselect = YCancelEvent;
  BtnMenu.YUSERONCLICK = BtnMenu.onclick;
  BtnMenu.onclick =	YCancelEvent;
  BtnMenu.YINITIALIZED = true;
  return true;
}

function InitTB(y)
{
  y.TBWidth = 0;

  if (!	PopulateTB(y)) return false;

  y.style.posWidth = y.TBWidth;

  return true;
}


function YCancelEvent()
{
  event.returnValue=false;
  event.cancelBubble=true;
  return false;
}

function PopulateTB(y)
{
  var i, elements, element;

  elements = y.children;
  for (i=0; i<elements.length; i++) {
    element = elements[i];
    if (element.tagName	== "SCRIPT" || element.tagName == "!") continue;

    switch (element.className) {
      case "Btn":
        if (element.YINITIALIZED == null)	{
          if (! InitBtn(element))
          return false;
        }
        element.style.posLeft = y.TBWidth;
        y.TBWidth	+= element.offsetWidth + 1;
        break;
      
	  case "BtnMenu":
        if (element.YINITIALIZED == null)	{
          if (! InitBtnMenu(element))
          return false;
        }
        element.style.posLeft = y.TBWidth;
        y.TBWidth	+= element.offsetWidth + 1;
        break;

      case "TBGen":
        element.style.posLeft = y.TBWidth;
        y.TBWidth	+= element.offsetWidth + 1;
        break;

      case "TBSep":
        element.style.posLeft = y.TBWidth	+ 2;
        y.TBWidth	+= SEP_PADDING;
        break;

      case "TBHandle":
        element.style.posLeft = 2;
        y.TBWidth	+= element.offsetWidth + HANDLE_PADDING;
        break;

      default:
        return false;
      }
  }

  y.TBWidth += 1;
  return true;
}

function DebugObject(obj)
{
  var msg = "";
  for (var i in	TB) {
    ans=prompt(i+"="+TB[i]+"\n");
    if (! ans) break;
  }
}

function LayoutTBs()
{
  NumTBs = yToolbars.length;

  if (NumTBs ==	0) return;

  var i;
  var ScrWid = (document.body.offsetWidth) - 6;
  var TotalLen = ScrWid;
  for (i = 0 ; i < NumTBs ; i++) {
    TB = yToolbars[i];
    if (TB.TBWidth > TotalLen) TotalLen	= TB.TBWidth;
  }

  var PrevTB;
  var LastStart	= 0;
  var RelTop = 0;
  var LastWid, CurrWid;
  var TB = yToolbars[0];
  TB.style.posTop = 0;
  TB.style.posLeft = 0;

  var Start = TB.TBWidth;
  for (i = 1 ; i < yToolbars.length ; i++) {
    PrevTB = TB;
    TB = yToolbars[i];
    CurrWid = TB.TBWidth;

    if ((Start + CurrWid) > ScrWid) {
      Start = 0;
      LastWid =	TotalLen - LastStart;
    }
    else {
       LastWid =	PrevTB.TBWidth;
       RelTop -=	TB.offsetHeight;
    }

    TB.style.posTop = RelTop;
    TB.style.posLeft = Start;
    PrevTB.style.width = LastWid;

    LastStart =	Start;
    Start += CurrWid;
  }

  TB.style.width = TotalLen - LastStart;

  i--;
  TB = yToolbars[i];
  var TBInd = TB.sourceIndex;
  var A	= TB.document.all;
  var item;
  for (i in A) {
    item = A.item(i);
    if (! item)	continue;
    if (! item.style) continue;
    if (item.sourceIndex <= TBInd) continue;
    if (item.style.position == "absolute") continue;
    item.style.posTop =	RelTop;
  }
}

function DoLayout()
{
  LayoutTBs();
}

function BtnMouseOver()
{
  if (event.srcElement.tagName != "IMG") return	false;
  var image = event.srcElement;
  var element =	image.parentElement;

  if (image.className == "Ico")	element.className = "BtnMouseOverUp";
  else if (image.className == "IcoDown") element.className = "BtnMouseOverDown";

  event.cancelBubble = true;
}

function BtnMouseOut()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;
  yRaisedElement = null;

  element.className = "Btn";
  image.className = "Ico";

  event.cancelBubble = true;
}

function BtnMouseDown()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    event.returnValue=false;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  element.className = "BtnMouseOverDown";
  image.className = "IcoDown";

  event.cancelBubble = true;
  event.returnValue=false;
  return false;
}

function BtnMouseUp()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  if (element.YUSERONCLICK) eval(element.YUSERONCLICK +	"anonymous()");

  element.className = "BtnMouseOverUp";
  image.className = "Ico";

  event.cancelBubble = true;
  return false;
}

function BtnMenuMouseOver()
{
  if (event.srcElement.tagName != "IMG") return	false;
  var image = event.srcElement;
  var element =	image.parentElement;

  if (image.className == "Ico")	element.className = "BtnMenuMouseOverUp";
  else if (image.className == "IcoDown") element.className = "BtnMenuMouseOverDown";

  event.cancelBubble = true;
}

function BtnMenuMouseOut()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;
  yRaisedElement = null;

  element.className = "BtnMenu";
  image.className = "Ico";

  event.cancelBubble = true;
}

function BtnMenuMouseDown()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    event.returnValue=false;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  element.className = "BtnMenuMouseOverDown";
  image.className = "IcoDown";

  event.cancelBubble = true;
  event.returnValue=false;
  return false;
}

function BtnMenuMouseUp()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  if (element.YUSERONCLICK) eval(element.YUSERONCLICK +	"anonymous()");

  element.className = "BtnMenuMouseOverUp";
  image.className = "Ico";

  event.cancelBubble = true;
  return false;
}

function cleanHtml()
{
  var fonts = HtmlEdit.document.body.all.tags("FONT");
  var curr;
  for (var i = fonts.length - 1; i >= 0; i--) {
    curr = fonts[i];
    if (curr.style.backgroundColor == "#ffffff") curr.outerHTML	= curr.innerHTML;
  }
}

function validateMode()
{
  if (EditMode) return true;
  alert("请先点编辑器下方的“编辑”按钮，进入“编辑”状态，然后再使用系统编辑功能!");
  HtmlEdit.focus();
  return false;
}

function UserDialog(what)
{
  if (!validateMode()) return;

  HtmlEdit.document.execCommand(what, true);

  pureText = false;
  HtmlEdit.focus();
}

function format(what,opt)
{
  if (!validateMode()) return;
  if (opt=="removeFormat")
  {
    what=opt;
    opt=null;
  }

  if (opt==null) HtmlEdit.document.execCommand(what);
  else HtmlEdit.document.execCommand(what,"",opt);

  pureText = false;
  HtmlEdit.focus();
}

function setMode(newMode)
{
  var cont;
  if (CurrentMode==newMode){
    return false;
  }
  
  if (newMode==0)
  {
	setMode0.src="Images/Editor/Editor2.gif";
	setMode1.src="Images/Editor/html.gif";
	setMode2.src="Images/Editor/browse.gif";
	if (PreviewMode){
	  document.all.HtmlEdit.style.display="";
	  document.all.HtmlPreview.style.display="none";
	}
	if(SourceMode){
	  cont=HtmlEdit.document.body.innerText;
	
	HtmlEdit.document.designMode="On";
      HtmlEdit.document.body.innerHTML=cont;
	HtmlEdit.document.body.contentEditable="true";
	HtmlEdit.document.oncontextmenu=new Function("return showContextMenu(eWebEditor.event);");
	HtmlEdit.document.execCommand("2D-Position",true,true);
	HtmlEdit.document.execCommand("MultipleSelection", true, true);
	}
    EditMode=true;
	SourceMode=false;
	PreviewMode=false;
  }
  else if (newMode==1)
  {
	setMode0.src="Images/Editor/Editor.gif";
	setMode1.src="Images/Editor/html2.gif";
	setMode2.src="Images/Editor/browse.gif";
	if (PreviewMode){
	  document.all.HtmlEdit.style.display="";
	  document.all.HtmlPreview.style.display="none";
	}
	if(EditMode){
	  cleanHtml();
      cleanHtml();
      cont=HtmlEdit.document.body.innerHTML;
      HtmlEdit.document.body.innerText=cont;
	}
    EditMode=false;
	SourceMode=true;
	PreviewMode=false;
  }
  else if (newMode==2)
  {
	setMode0.src="Images/Editor/Editor.gif";
	setMode1.src="Images/Editor/html.gif";
	setMode2.src="Images/Editor/browse2.gif";
	var str1="<head><style type=\"text/css\">body {font-size:	9pt}</style><meta http-equiv=Content-Type content=\"text/html; charset=gb2312\"></head><BODY bgcolor=\"#F6F6F6\" MONOSPACE>";
	if(CurrentMode==0){
	  str1=str1+HtmlEdit.document.body.innerHTML;
	}
	else{
	  str1=str1+HtmlEdit.document.body.innerText;
	}
    HtmlPreview.document.open();
	HtmlPreview.document.write(str1);
    HtmlPreview.document.close();
    document.all.HtmlEdit.style.display="none";
	document.all.HtmlPreview.style.display="";
	PreviewMode=true;
  }
  CurrentMode=newMode;
  HtmlEdit.focus();
}

function foreColor()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var RangeType = HtmlEdit.document.selection.type;
  if (RangeType != "Text"){
    alert("请先选择一段文字！");
    return;
  }
  var arr = showModalDialog("editor_selcolor.asp", "", "dialogWidth:18.5em; dialogHeight:17.5em; help: no; scroll: no; status: no");
  if (arr != null) format('forecolor', arr);
  else HtmlEdit.focus();
}

function backColor()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var RangeType = HtmlEdit.document.selection.type;
  if (RangeType != "Text"){
    alert("请先选择一段文字！");
    return;
  }
  var arr = showModalDialog("editor_selcolor.asp", "", "dialogWidth:18.5em; dialogHeight:17.5em; help: no; scroll: no; status: no");
  if (arr != null){
    range.pasteHTML("<span style='background-color:"+arr+"'>"+range.text+"</span> ");
	range.select();
  }
  HtmlEdit.focus();
}
function page()
{
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  if(range.text!=""){
    alert("请不要选择任何文本");
  }
  else{
    range.text="\n\n[NextPage]\n\n";
	parent.selectPaginationType()
  }
}

function InsertTable()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_inserttable.asp", "", "dialogWidth:450px;dialogHeight:200px;help: no; scroll: no; status: no");

  if (arr != null){
	range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function FIELDSET()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_fieldset.asp", "", "dialogWidth:25em; dialogHeight:12.5em; help: no; scroll: no; status: no");
  if (arr != null){
    range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function iframe()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_insertiframe.asp", "", "dialogWidth:30em; dialogHeight:12em; help: no; scroll: no; status: no");  
  if (arr != null){
    range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function hr()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_inserthr.asp", "", "dialogWidth:30em; dialogHeight:12em; help: no; scroll: no; status: no"); 
  if (arr != null){
    range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function pic()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_insertpic.asp", "", "dialogWidth:31em; dialogHeight:17em; help: no; scroll: no; status: no");  
  if (arr != null){
    var ss=arr.split("$$$");
    range.pasteHTML(ss[0]);
    parent.myform.IncludePic.checked=true;
	if (ss[1]!="None")
	{
	  parent.AddItem(ss[1]);
	}
  }
  HtmlEdit.focus();
}

function swf()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_insertflash.asp", "", "dialogWidth:31em; dialogHeight:12em; help: no; scroll: no; status: no"); 
  if (arr != null){
    var ss=arr.split("$$$");
    range.pasteHTML(ss[0]);
    parent.myform.IncludePic.checked=true;
	if (ss[1]!="None")
	{
	  parent.AddItem(ss[1]);
	}
  }
  HtmlEdit.focus();
}

function wmv()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_insertmedia.asp", "", "dialogWidth:31em; dialogHeight:12em; help: no; scroll: no; status: no");
  if (arr != null){
    var ss=arr.split("$$$");
    range.pasteHTML(ss[0]);
    parent.myform.IncludePic.checked=true;
	if (ss[1]!="None")
	{
	  parent.AddItem(ss[1]);
	}
  }
  HtmlEdit.focus();
}


function rm()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_insertrm.asp", "", "dialogWidth:31em; dialogHeight:12em; help: no; scroll: no; status: no");  
  if (arr != null){
    var ss=arr.split("$$$");
    range.pasteHTML(ss[0]);
    parent.myform.IncludePic.checked=true;
	if (ss[1]!="None")
	{
	  parent.AddItem(ss[1]);
	}
  }
  HtmlEdit.focus();
}

function excel()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var str1="<object classid='clsid:0002E510-0000-0000-C000-000000000046' id='Spreadsheet1' codebase='file:\\Bob\software\office2000\msowc.cab' width='100%' height='250'><param name='EnableAutoCalculate' value='-1'><param name='DisplayTitleBar' value='0'><param name='DisplayToolbar' value='-1'><param name='ViewableRange' value='1:65536'></object>";
  range.pasteHTML(str1);
  HtmlEdit.focus();
}

//  雪冰+ save()
function save()
{
  if (CurrentMode==0){
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
    parent.myform.Content.value=HtmlEdit.document.body.innerHTML;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
//  self.opener.form1.content.value+=HtmlEdit.document.body.innerHTML;
  }
  else if(CurrentMode==1){
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
    parent.myform.Content.value=HtmlEdit.document.body.innerText;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
//  self.opener.form1.content.value+=HtmlEdit.document.body.innerText;
  }
  else
  {
    alert("预览状态不能保存！请先回到编辑状态后再保存");
  }
  HtmlEdit.focus();
}

function nowdate()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var d = new Date();
  var str1=d.getYear()+"年"+(d.getMonth() + 1)+"月"+d.getDate() +"日";
  range.pasteHTML(str1);
  HtmlEdit.focus();
}

function nowtime()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var d = new Date();
  var str1=d.getHours() +":"+d.getMinutes()+":"+d.getSeconds();
  range.pasteHTML(str1);
  HtmlEdit.focus();
}

function findstr()
{
  if (!	validateMode())	return;
  var arr = showModalDialog("editor_find.asp", window, "dialogWidth:320px; dialogHeight:170px; help: no; scroll: no; status: no");
}

function help()
{
  var arr = showModalDialog("editor_help.asp", "", "dialogWidth:580px; dialogHeight:460px; help: no; scroll: no; status: no");
}

function tablecommand(command)
{
	var cellflag=false;
	var rowflag=false;
	var tableflag=false;
	var cellindex,rowindex,tableref;
	HtmlEdit.focus();
	var xsel=HtmlEdit.document.selection;
	var xobj=HtmlEdit.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&cellflag==false){
			if(xsel.tagName=="TD"){cellindex=xsel.cellIndex;cellflag=true;}
			if(cellflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TD"){
			cellindex=xsel.cellIndex;
			cellflag=true;
		}else{
			while(xsel.tagName!="BODY"&&cellflag==false){
				if(xsel.tagName=="TD"){cellindex=xsel.cellIndex;cellflag=true;}
				if(cellflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(cellflag==true){
		xsel=HtmlEdit.document.selection;
		xobj=HtmlEdit.document.selection.createRange();
		if(xsel.type=="None"||xsel.type=="Text"){
			xsel=xobj.parentElement();
			while(xsel.tagName!="BODY"&&rowflag==false){
				if(xsel.tagName=="TR"){
					rowindex=xsel.rowIndex;
					rowflag=true;
				}
				if(rowflag==false){xsel=xsel.parentElement;}
			}
		}else if(xsel.type=="Control"){
			xsel=xobj.item(0);
			if(xsel.tagName=="TR"){
				rowindex=xsel.rowIndex;
				rowflag=true;
			}else{
				while(xsel.tagName!="BODY"&&rowflag==false){
					if(xsel.tagName=="TR"){
						rowindex=xsel.rowIndex;
						rowflag=true;
					}
					if(rowflag==false){
						xsel=xsel.parentElement;
					}
				}
			}
		}
		xsel=HtmlEdit.document.selection;
		xobj=HtmlEdit.document.selection.createRange();
		if(xsel.type=="None"||xsel.type=="Text"){
			xsel=xobj.parentElement();
			while(xsel.tagName!="BODY"&&tableflag==false){
				if(xsel.tagName=="TABLE"){tableflag=true;}
				if(tableflag==false){xsel=xsel.parentElement;}
			}
		}else if(xsel.type=="Control"){
			xsel=xobj.item(0);
			if(xsel.tagName=="TABLE"){
				tableflag=true;
			}else{
				while(xsel.tagName!="BODY"&&tableflag==false){
					if(xsel.tagName=="TABLE"){tableflag=true;}
					if(tableflag==false){xsel=xsel.parentElement;}
				}
			}
		}
		if(command==3){
			var temprowcount=xsel.rows.length;
			var tempcell;
			var tempspancount=0;
			var tempspanholder;
			var tempcellwidth=xsel.rows[rowindex].cells[cellindex].width;
			var xpositequiv=-1;
			var xposcount=0;
			while(xposcount<=cellindex){
				xpositequiv+=parseInt(xsel.rows[rowindex].cells[xposcount].colSpan);
				xposcount++;
			}
			var ypositequiv=-1;
			var yposcount=0;
			var ymax=xsel.rows[rowindex].cells.length;
			while(yposcount<=ymax-1){
				ypositequiv+=parseInt(xsel.rows[rowindex].cells[yposcount].colSpan);
				yposcount++;
			}
			var idealinsert=xpositequiv+1;
			var zi2=0;
			var zirowtouse=0;
			var zirowtot=xsel.rows.length;
			var rowarray=new Array(zirowtot);
			var rowarray2=new Array(zirowtot);
			for(init1=0;init1<=zirowtot-1;init1++){
				rowarray[init1]=0;
				rowarray2[init1]=0;
			}
			for(zi1=0;zi1<=zirowtot-1;zi1++){
				zi2=0;
				while(zi2<idealinsert&&(rowarray[zi1]==null||rowarray[zi1]<idealinsert)){
					rowarray[zi1]+=parseInt(xsel.rows[zi1].cells[zi2].colSpan);
					rowarray2[zi1]++;
					zi2++;
				}
			}
			var allequal=true;
			var zi3a,zi3b;
			var zthemax=0;
			for(zi3=0;zi3<=zirowtot-1;zi3++){
				zi3a=rowarray[0];
				zi3b=rowarray[zi3];
				if(zi3b>zthemax){zthemax=zi3b;}
				if(zi3a!=zi3b){allequal=false;}
			}
			if(allequal==false){
				var zi4=0;
				var allequal2=true;
				while(zthemax<=ypositequiv&&allequal==false){
					for(zi5=0;zi5<=zirowtot-1;zi5++){
						rowarray[zi5]+=parseInt(xsel.rows[zi5].cells[rowarray2[zi5]].colSpan);
					}
					for(zi3=0;zi3<=zirowtot-1;zi3++){
						zi3a=rowarray[0];
						zi3b=rowarray[zi3];
						if(zi3b>zthemax){zthemax=zi3b;}
						if(zi3a!=zi3b){allequal2=false;}
					}
					if(allequal2==true){allequal=true;}
					for(zi8=0;zi8<=zirowtot-1;zi8++){rowarray2[zi8]++;}
					}
				}
				var zi9;
				for(zi7=0;zi7<=zirowtot-1;zi7++){
					zi9=xsel.rows[zi7].insertCell(rowarray2[zi7]);
					zi9.width=tempcellwidth;
				}
		}else if(command==4){
			var temprowcount=xsel.rows.length;
			for(iccount=0;iccount<=temprowcount-1;iccount++){
				xsel.rows[iccount].deleteCell(cellindex);
			}
			}else if(command==1){
				var tempcell;
				var tempcellb;
				var tempcellcount=xsel.rows[rowindex].cells.length;
				var cellcolarray=new Array(tempcellcount);
				var cellrowarray=new Array(tempcellcount);
				for(cacount=0;cacount<=tempcellcount-1;cacount++){
					cellcolarray[cacount]=xsel.rows[rowindex].cells(cacount).colSpan;
					cellrowarray[cacount]=xsel.rows[rowindex].cells(cacount).rowSpan;
				}
				tempcell=xsel.insertRow(rowindex);
				for(cbcount=0;cbcount<=tempcellcount-1;cbcount++){
					tempcellb=tempcell.insertCell();
					if(cellcolarray[cbcount]!=1){tempcellb.colSpan=cellcolarray[cbcount];}
				}
		}else if(command==2){
				var temprowcount=xsel.rows.length;tempcell=xsel.deleteRow(rowindex);
		}else if(command==5){
				if(xsel.rows[rowindex].cells[cellindex+1]){
					var x=parseInt(xsel.rows[rowindex].cells[cellindex].colSpan)+parseInt(xsel.rows[rowindex].cells[cellindex+1].colSpan);
					var y=xsel.rows[rowindex].cells[cellindex].innerHTML+" "+xsel.rows[rowindex].cells[cellindex+1].innerHTML;
					xsel.rows[rowindex].deleteCell(cellindex+1);
					xsel.rows[rowindex].cells[cellindex].colSpan=x;
					xsel.rows[rowindex].cells[cellindex].innerHTML=y;
				}
		}else if(command==6){
				var yatemprow=xsel.rows.length;
				var yamax=0;
				for(ya1=0;ya1<=yatemprow-1;ya1++){
					var ypositequiv=-1;
					var yposcount=0;
					var ymax=xsel.rows[ya1].cells.length;
					while(yposcount<=ymax-1){
						ypositequiv+=parseInt(xsel.rows[ya1].cells[yposcount].colSpan);
						yposcount++;
					}
					if(ypositequiv>yamax){yamax=ypositequiv;}
				}
				var rowarray=new Array();
				var rowarray2=new Array();
				var myrowcount=xsel.rows.length;
				for(ra1=0;ra1<=myrowcount-1;ra1++){
					rowarray[ra1]=new Array();
					rowarray2[ra1]=0;
					for(cr1=0;cr1<=yamax;cr1++){rowarray[ra1][cr1]=777;}
				}
				var tempra;
				var ra2=0;
				for(ra3=0;ra3<=yamax;ra3++){
					ra2=0;
					while(ra2<=myrowcount-1){
						if(xsel.rows[ra2].cells[ra3]){
							tempra=parseInt(xsel.rows[ra2].cells[ra3].rowSpan);
							if(tempra>1){
								rowarray[ra2][ra3]=ra3+rowarray2[ra2];
								for(zoo=1;zoo<=tempra-1;zoo++){rowarray2[ra2+zoo]--;}
							}
						}
						if(rowarray[ra2][ra3-1]!=ra3+rowarray2[ra2]){
							rowarray[ra2][ra3]=ra3+rowarray2[ra2];
						}else{
							rowarray[ra2][ra3]=555;
						}
						ra2++;
					}
				}
				var samx="";
				var samcount=0;
				for(rx1=0;rx1<=myrowcount-1;rx1++){
					samcount=rowarray[rx1].length;
					for(rx2=0;rx2<=samcount-1;rx2++){
						samx+="-"+rowarray[rx1][rx2];
					}
					samx+="\n";
				}
				var j=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan);
				var jcount=rowarray[rowindex].length;
				var jval=0;
				for(jc1=0;jc1<=jcount-1;jc1++){
					if(rowarray[rowindex][jc1]==cellindex){jval=jc1;}
				}
				if(xsel.rows[rowindex+j]){
					var cellindex2=rowarray[rowindex+j][jval];
					var x=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan)+parseInt(xsel.rows[rowindex+j].cells[cellindex2].rowSpan);
					var y=xsel.rows[rowindex].cells[cellindex].innerHTML+" "+xsel.rows[rowindex+j].cells[cellindex2].innerHTML;
					xsel.rows[rowindex+j].deleteCell(cellindex2);
					xsel.rows[rowindex].cells[cellindex].rowSpan=x;
					xsel.rows[rowindex].cells[cellindex].innerHTML=y;
				}
		}else if(command==7){
				var getrowspan=parseInt(xsel.rows[rowindex].cells[cellindex].rowSpan);
				var getcolspan=parseInt(xsel.rows[rowindex].cells[cellindex].colSpan);
				if(getrowspan>1){
					var xr1=getrowspan-1;
					var xrposit=rowindex;
					var xrcposit=cellindex;
					var xrholder;xsel.rows[rowindex].cells[cellindex].rowSpan=1;
					for(xr2=1;xr2<=xr1;xr2++){
						xrholder=xsel.rows[xrposit+xr2].insertCell(xrcposit);
						xrholder.colSpan=xsel.rows[rowindex].cells[cellindex].colSpan;
					}
				}
				if(getcolspan>1){
					var yr1=getcolspan-1;
					var yrposit=rowindex;
					var yrcposit=cellindex;
					var yrholder;xsel.rows[rowindex].cells[cellindex].colSpan=1;
					for(yr2=1;yr2<=yr1;yr2++){
						yrholder=xsel.rows[yrposit].insertCell(yrcposit);
						yrholder.rowSpan=xsel.rows[rowindex].cells[cellindex].rowSpan;
					}
				}
			}
		}
}


function tableProp(){
	var tableflag=false;
	HtmlEdit.focus();
	var xsel=HtmlEdit.document.selection;
	var xobj=HtmlEdit.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&tableflag==false){
			if(xsel.tagName=="TABLE"){tableflag=true;}
			if(tableflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TABLE"){
			tableflag=true;
		}else{
			while(xsel.tagName!="BODY"&&tableflag==false){
				if(xsel.tagName=="TABLE"){tableflag=true;}
				if(tableflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(tableflag==true){
		if(xsel.className!=""&&xsel.className!=null){tableclass=xsel.className;}else{tableclass="";}
		if(xsel.width!=""&&xsel.width!=null){tablewidthspecified="yes";tablewidth=xsel.width;}else{tablewidthspecified="no";tablewith="";}
		if(xsel.align!=""&&xsel.align!=null){tablealign=xsel.align;}else{tablealign="";}
		if(xsel.border!=""&&xsel.border!=null){tablebordersize=xsel.border;}else{tablebordersize="";}
		if(xsel.cellPadding!=""&&xsel.cellPadding!=null){tablecellpadding=xsel.cellPadding;}else{tablecellpadding="";}
		if(xsel.cellSpacing!=""&&xsel.cellSpacing!=null){tablecellspacing=xsel.cellSpacing;}else{tablecellspacing="";}
		if(xsel.borderColor!=""&&xsel.borderColor!=null){tablebordercolor=xsel.borderColor;}else{tablebordercolor="";}
		if(xsel.bgColor!=""&&xsel.bgColor!=null){tablebackgroundcolor=xsel.bgColor;}else{tablebackgroundcolor="";}
		tableiscancel="";
		window.showModalDialog("editor_tableprops.asp",window," dialogWidth: 350px; dialogHeight: 300px; help: no;scroll: no; status: no");
		if(tableiscancel=="no"){
			if(tablewidthspecified=="yes"){
				var tw1="";
				if(tablewidthtype=="percentage"){
					tw1=tablewidth+"%";
				}else{
					tw1=tablewidth;
				}
				xsel.width=tw1;
			}else{
				xsel.removeAttribute("width",0);
			}
			if(tablealign!=""&&tablealign!="Default"){xsel.align=tablealign;}else{xsel.removeAttribute("align",0);}
			if(tableclass!=""&&tableclass!="Default"){xsel.className=tableclass;}else{xsel.removeAttribute("className",0);}
			if(tablebordersize!=""&&tablebordersize!=null){xsel.border=tablebordersize;}else{xsel.removeAttribute("border",0);}
			if(tablecellpadding!=""&&tablecellpadding!=null){xsel.cellPadding=tablecellpadding;}else{xsel.removeAttribute("cellPadding",0);}
			if(tablecellspacing!=""&&tablecellspacing!=null){xsel.cellSpacing=tablecellspacing;}else{xsel.removeAttribute("cellSpacing",0);}
			if(tablebordercolor!=""&&tablebordercolor!="Default"){xsel.borderColor=tablebordercolor;}else{xsel.removeAttribute("borderColor",0);}
			if(tablebackgroundcolor!=""&&tablebackgroundcolor!="Default"){xsel.bgColor=tablebackgroundcolor;}else{xsel.removeAttribute("bgColor",0);}
		}
	}
}

function cellProp(){
	var cellflag=false;
	HtmlEdit.focus();
	var xsel=HtmlEdit.document.selection;
	var xobj=HtmlEdit.document.selection.createRange();
	if(xsel.type=="None"||xsel.type=="Text"){
		xsel=xobj.parentElement();
		while(xsel.tagName!="BODY"&&cellflag==false){
			if(xsel.tagName=="TD"){cellflag=true;}
			if(cellflag==false){xsel=xsel.parentElement;}
		}
	}else if(xsel.type=="Control"){
		xsel=xobj.item(0);
		if(xsel.tagName=="TD"){
			cellflag=true;
		}else{
			while(xsel.tagName!="BODY"&&cellflag==false){
				if(xsel.tagName=="TD"){cellflag=true;}
				if(cellflag==false){xsel=xsel.parentElement;}
			}
		}
	}
	if(cellflag==true){
		if(xsel.width!=""&&xsel.width!=null){tablewidthspecified="yes";tablewidth=xsel.width;}else{tablewidthspecified="no";tablewith="";}
		if(xsel.align!=""&&xsel.align!=null){tablealign=xsel.align;}else{tablealign="";}
		if(xsel.className!=""&&xsel.className!=null){tablecellclass=xsel.className;}else{tablecellclass="";}
		if(xsel.vAlign!=""&&xsel.vAlign!=null){tablevalign=xsel.vAlign;}else{tablevalign="";}
		if(xsel.borderColor!=""&&xsel.borderColor!=null){tablebordercolor=xsel.borderColor;}else{tablebordercolor="";}
		if(xsel.bgColor!=""&&xsel.bgColor!=null){tablebackgroundcolor=xsel.bgColor;}else{tablebackgroundcolor="";}
		tableiscancel="";
		window.showModalDialog("editor_cellprops.asp",window,"dialogWidth: 400px; dialogHeight: 230px;help: no;scroll: no; status: no");
		if(tableiscancel=="no"){
			if(tablewidthspecified=="yes"){
				var tw1="";
				if(tablewidthtype=="percentage"){tw1=tablewidth+"%";}else{tw1=tablewidth;}
				xsel.width=tw1;
			}else{
				xsel.removeAttribute("width",0);
			}
			if(tablealign!=""&&tablealign!="Default"){xsel.align=tablealign;}else{xsel.removeAttribute("align",0);}
			if(tablevalign!=""&&tablevalign!="Default"){xsel.vAlign=tablevalign;}else{xsel.removeAttribute("vAlign",0);}
			if(tablecellclass!=""&&tablecellclass!="Default"){xsel.className=tablecellclass;}else{xsel.removeAttribute("className",0);}
			if(tablebordercolor!=""&&tablebordercolor!="Default"){xsel.borderColor=tablebordercolor;}else{xsel.removeAttribute("borderColor",0);}
			if(tablebackgroundcolor!=""&&tablebackgroundcolor!="Default"){xsel.bgColor=tablebackgroundcolor;}else{xsel.removeAttribute("bgColor",0);}
		}
	}
}
function table_ir()
{
	tablecommand("ir");
}
function table_dr()
{
	tablecommand("dr");
}
function table_ic()
{
	tablecommand("ic");
}
function table_dc()
{
	tablecommand("dc");
}
function table_mc()
{
	tablecommand("mc");
}
function table_md()
{
	tablecommand("md");
}
function table_sc()
{
	tablecommand("sc");
}

function word()
{
	HtmlEdit.document.execCommand("Paste",false);
	var editBody=HtmlEdit.document.body;
	for(var intLoop=0;intLoop<editBody.all.length;intLoop++){
		el=editBody.all[intLoop];
		el.removeAttribute("className","",0);
		el.removeAttribute("style","",0);
		el.removeAttribute("font","",0);
	}
	var html=HtmlEdit.document.body.innerHTML;
	html=html.replace(/<o:p>&nbsp;<\/o:p>/g,"");
	html=html.replace(/o:/g,"");
	html=html.replace(/<font>/g, "");
	html=html.replace(/<FONT>/g, "");
	html=html.replace(/<span>/g, "");
	html=html.replace(/<SPAN>/g, "");
	html=html.replace(/<SPAN lang=EN-US>/g, "");
	html=html.replace(/<P>/g, "");
	html=html.replace(/<\/P>/g, "");
 	html=html.replace(/<\/SPAN>/g, "");
	HtmlEdit.document.body.innerHTML = html;
	format('selectall');
	format('RemoveFormat');
}

function InsertChars(CharIndex)
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var Chars=new Array("<br>","&copy;","&reg;","&#8482;","&#8226;","&#8230;","&#8212;","&#8211;");
  range.pasteHTML(Chars[CharIndex]);
  HtmlEdit.focus();
}
function InsertEQ()
{
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_inserteq.asp", "", "dialogWidth:40em; dialogHeight:20em; status:0;help:0");
  
  if (arr != null){
    var ss;
    ss=arr.split("*")
    a=ss[0];
    b=ss[1];
    var str1;
    str1="<applet codebase='./' code='webeq3.ViewerControl' WIDTH=320 HEIGHT=100>"
    str1=str1+"<PARAM NAME='parser' VALUE='mathml'><param name='color' value='"+b+"'><PARAM NAME='size' VALUE='18'>"
    str1=str1+"<PARAM NAME=eq id=eq VALUE='"+a+"'></applet>"
    range.pasteHTML(str1);
  }
  HtmlEdit.focus();
}
function InstallEQ()
{
  window.open ("editor_inserteq.asp?Action=Install", "", "height=200, width=300,left="+(screen.AvailWidth-300)/2+",top="+(screen.AvailHeight-200)/2+", toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no")
}
function calculator()
{
  HtmlEdit.focus();
  var range =HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_calculator.asp", "", "dialogWidth:205px; dialogHeight:210px; status:0;help:0");
  
  if (arr != null){
    var ss;
    ss=arr.split("*")
    a=ss[0];
    b=ss[1];
    var str1;
    str1=""+a+""
    range.pasteHTML(str1);
  }
  HtmlEdit.focus();
}

//新加入功能

function Insergongneng(what)
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var ran = HtmlEdit.document.selection.createRange("").text;
  switch(what){
  case "input":
   range.pasteHTML('<INPUT value='+ran+'>');
   break;
  case "textarea":
   range.pasteHTML('<TEXTAREA>'+ran+'</TEXTAREA>');
   break;
  case "radio":
   range.pasteHTML('<INPUT type=radio>');
   break;
  case "checkbox":
   range.pasteHTML('<INPUT type=checkbox>');
   break;
  case "bottom":
   range.pasteHTML('<BUTTON>'+ran+'</BUTTON>');
   break;
  }
  HtmlEdit.focus();
}

function Insermenu(id)
{
  HtmlEdit.focus();
  if (!	validateMode())	return;
  var range = HtmlEdit.document.selection.createRange();
  var ran = HtmlEdit.document.selection.createRange("").text;
  var arr = showModalDialog("editor_insmenu.asp?id="+id, "", "dialogWidth:450pt;dialogHeight:186pt;help:0;status:0");

  if (arr != null){
	range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function Insertlr(filename,wwid,whei,myid)
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog(filename+"?id="+myid, window, "dialogWidth:"+wwid+"pt;dialogHeight:"+whei+"pt;help:0;status:0");
  if (arr != null){
	range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function Insercode()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var ran = HtmlEdit.document.selection.createRange("").text;
  range.pasteHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #CCCCCC; TABLE-LAYOUT: fixed"><tr><td bgcolor=#FDFDDF style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">以下是代码片段：</font><br>'+ran+'</td></tr></table>');
  HtmlEdit.focus();
}

function Inserquote()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var ran = HtmlEdit.document.selection.createRange("").text;
  range.pasteHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #CCCCCC; TABLE-LAYOUT: fixed"><tr><td bgcolor=#F3F3F3 style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">以下是引用片段：</font><br>'+ran+'</td></tr></table>');
  HtmlEdit.focus();
}

function inseremot()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_emot.asp", "", "dialogWidth:230pt;dialogHeight:186pt;help:0;status:0");  
  if (arr != null){
    range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

function insermarquee()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("editor_marquee.asp", "", "dialogWidth:395pt;dialogHeight:150pt;help:0;status:0");  
  if (arr != null){
    range.pasteHTML(arr);
  }
  HtmlEdit.focus();
}

// 插入特殊对象
function inserteshu(whatsp)
{
 if (! validateMode()) return;
 HtmlEdit.focus();
 var range = HtmlEdit.document.selection.createRange();
 var ran = HtmlEdit.document.selection.createRange("").text;
 switch(whatsp)
  {
  case "big":
        if (ran != null){
        range.pasteHTML("<big>" + ran + "</big>");
        }
	break;
  case "small":
        if (ran != null){
        range.pasteHTML("<small>" + ran + "</small>");
        }
	break;
  }
 HtmlEdit.focus();
}

function zIndex(action){
	var objReference	= null;
	var RangeType		= HtmlEdit.document.selection.type;
	if (RangeType != "Control") return;
	var selectedRange	= HtmlEdit.document.selection.createRange();
	for (var i=0; i<selectedRange.length; i++){
		objReference = selectedRange.item(i);
		if (action=='forward'){
			objReference.style.zIndex  +=1;
		}else{
			objReference.style.zIndex  -=1;
		}
		objReference.style.position='absolute';
	}
	HtmlEdit.content = false;
}

// 相对(absolute)或绝对位置(static)
function absolutePosition(){
	var objReference	= null;
	var RangeType		= HtmlEdit.document.selection.type;
	if (RangeType != "Control") return;
	var selectedRange	= HtmlEdit.document.selection.createRange();
	for (var i=0; i<selectedRange.length; i++){
		objReference = selectedRange.item(i);
		if (objReference.style.position != 'absolute') {
			objReference.style.position='absolute';
		}else{
			objReference.style.position='static';
		}
	}
	HtmlEdit.content = false;
}

// 新加入代码结束

</script>

</body>
</html>