<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>信息运维服务</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"xinxiyunweifuwu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xinxiyunweifuwu"); 

%>
  <form  action="xinxiyunweifuwu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改信息运维服务:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>服务编号：</td><td><input name='fuwubianhao' type='text' id='fuwubianhao' value='<%= mmm.get("fuwubianhao")%>' class="form-control" /></td></tr>     <tr><td>服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='<%= mmm.get("fuwumingcheng")%>' class="form-control" /></td></tr>     <tr><td>编制单位：</td><td><input name='bianzhidanwei' type='text' id='bianzhidanwei' value='<%= mmm.get("bianzhidanwei")%>' class="form-control" /></td></tr>     <tr><td>运维部门：</td><td><input name='yunweibumen' type='text' id='yunweibumen' value='<%= mmm.get("yunweibumen")%>' class="form-control" /></td></tr>     <tr><td>运维部门分类：</td><td><input name='yunweibumenfenlei' type='text' id='yunweibumenfenlei' value='<%= mmm.get("yunweibumenfenlei")%>' class="form-control" /></td></tr>     <tr><td>计划年度：</td><td><input name='jihuaniandu' type='text' id='jihuaniandu' value='<%= mmm.get("jihuaniandu")%>' class="form-control" /></td></tr>     <tr><td>计划金额（万元）：</td><td><input name='jihuajinewanyuan' type='text' id='jihuajinewanyuan' value='<%= mmm.get("jihuajinewanyuan")%>' class="form-control" /></td></tr>     <tr><td>附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fujian')"/></div></td></tr>     <tr><td>服务开始时间：</td><td><input name='fuwukaishishijian' type='text' id='fuwukaishishijian' value='<%= mmm.get("fuwukaishishijian")%>' class="form-control" /></td></tr>     <tr><td>服务结束时间：</td><td><input name='fuwujieshushijian' type='text' id='fuwujieshushijian' value='<%= mmm.get("fuwujieshushijian")%>' class="form-control" /></td></tr>     <tr><td>最后修改时间：</td><td><input name='zuihouxiugaishijian' type='text' id='zuihouxiugaishijian' value='<%= mmm.get("zuihouxiugaishijian")%>' class="form-control" /></td></tr>     <tr><td>服务目标：</td><td><textarea name='fuwumubiao' cols='50' rows='5' id='fuwumubiao' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("fuwumubiao")%></textarea></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


