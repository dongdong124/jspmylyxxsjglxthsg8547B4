<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>信息运维服务</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="xinxiyunweifuwu_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"xinxiyunweifuwu",ext,true,false,""); 

}

%>

  <body >
 <form  action="xinxiyunweifuwu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加信息运维服务:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">服务编号：</td><td><input name='fuwubianhao' type='text' id='fuwubianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwubianhao' /></td></tr>		<tr><td  width="200">服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>		<tr><td  width="200">编制单位：</td><td><input name='bianzhidanwei' type='text' id='bianzhidanwei' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">运维部门：</td><td><input name='yunweibumen' type='text' id='yunweibumen' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">运维部门分类：</td><td><input name='yunweibumenfenlei' type='text' id='yunweibumenfenlei' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">计划年度：</td><td><input name='jihuaniandu' type='text' id='jihuaniandu' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">计划金额（万元）：</td><td><input name='jihuajinewanyuan' type='text' id='jihuajinewanyuan' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljihuajinewanyuan' />必需数字型</td></tr>		<tr><td  width="200">附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fujian')"  /></div></td></tr>		<tr><td  width="200">服务开始时间：</td><td><input name='fuwukaishishijian' type='text' id='fuwukaishishijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">服务结束时间：</td><td><input name='fuwujieshushijian' type='text' id='fuwujieshushijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">最后修改时间：</td><td><input name='zuihouxiugaishijian' type='text' id='zuihouxiugaishijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">服务目标：</td><td><textarea name='fuwumubiao'  id='fuwumubiao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var fuwubianhaoobj = document.getElementById("fuwubianhao"); if(fuwubianhaoobj.value==""){document.getElementById("clabelfuwubianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务编号</font>";return false;}else{document.getElementById("clabelfuwubianhao").innerHTML="  "; } 	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务名称</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 	var jihuajinewanyuanobj = document.getElementById("jihuajinewanyuan"); if(jihuajinewanyuanobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jihuajinewanyuanobj.value)){document.getElementById("clabeljihuajinewanyuan").innerHTML=""; }else{document.getElementById("clabeljihuajinewanyuan").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
