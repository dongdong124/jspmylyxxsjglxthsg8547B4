<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��Ϣ��ά����</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
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
  �����Ϣ��ά����:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">�����ţ�</td><td><input name='fuwubianhao' type='text' id='fuwubianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwubianhao' /></td></tr>		<tr><td  width="200">�������ƣ�</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>		<tr><td  width="200">���Ƶ�λ��</td><td><input name='bianzhidanwei' type='text' id='bianzhidanwei' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">��ά���ţ�</td><td><input name='yunweibumen' type='text' id='yunweibumen' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">��ά���ŷ��ࣺ</td><td><input name='yunweibumenfenlei' type='text' id='yunweibumenfenlei' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">�ƻ���ȣ�</td><td><input name='jihuaniandu' type='text' id='jihuaniandu' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">�ƻ�����Ԫ����</td><td><input name='jihuajinewanyuan' type='text' id='jihuajinewanyuan' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljihuajinewanyuan' />����������</td></tr>		<tr><td  width="200">������</td><td><input name='fujian' type='text' id='fujian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"  /></div></td></tr>		<tr><td  width="200">����ʼʱ�䣺</td><td><input name='fuwukaishishijian' type='text' id='fuwukaishishijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">�������ʱ�䣺</td><td><input name='fuwujieshushijian' type='text' id='fuwujieshushijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">����޸�ʱ�䣺</td><td><input name='zuihouxiugaishijian' type='text' id='zuihouxiugaishijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" class="form-control" /></td></tr>		<tr><td  width="200">����Ŀ�꣺</td><td><textarea name='fuwumubiao'  id='fuwumubiao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
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
 
	var fuwubianhaoobj = document.getElementById("fuwubianhao"); if(fuwubianhaoobj.value==""){document.getElementById("clabelfuwubianhao").innerHTML="&nbsp;&nbsp;<font color=red>�����������</font>";return false;}else{document.getElementById("clabelfuwubianhao").innerHTML="  "; } 	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>�������������</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 	var jihuajinewanyuanobj = document.getElementById("jihuajinewanyuan"); if(jihuajinewanyuanobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jihuajinewanyuanobj.value)){document.getElementById("clabeljihuajinewanyuan").innerHTML=""; }else{document.getElementById("clabeljihuajinewanyuan").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
