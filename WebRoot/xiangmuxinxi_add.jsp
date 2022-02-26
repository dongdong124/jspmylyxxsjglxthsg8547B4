<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>项目信息</title>
	
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
	document.location.href="xiangmuxinxi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"xiangmuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="xiangmuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加项目信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">ERP凭证号：</td><td><input name='ERPpingzhenghao' type='text' id='ERPpingzhenghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelERPpingzhenghao' /></td></tr>
		<tr><td>项目来源：</td><td><select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="省公司">省公司</option><option value="分公司">分公司</option></select>&nbsp;*<label id='clabelxiangmulaiyuan' /></td></tr>
		<tr><td>项目类别：</td><td><select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="资本">资本</option><option value="成本">成本</option></select></td></tr>
		<tr><td  width="200">项目实施年份：</td><td><input name='xiangmushishinianfen' type='text' id='xiangmushishinianfen' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">项目名称：</td><td><input name='xiangmumingcheng' type='text' id='xiangmumingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">项目定义号：</td><td><input name='xiangmudingyihao' type='text' id='xiangmudingyihao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">预算下达金额（不含税）：</td><td><input name='yusuanxiadajinebuhanshui' type='text' id='yusuanxiadajinebuhanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelyusuanxiadajinebuhanshui' />必需数字型</td></tr>
		<tr><td  width="200">项目负责人：</td><td><input name='xiangmufuzeren' type='text' id='xiangmufuzeren' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">中标单位：</td><td><input name='zhongbiaodanwei' type='text' id='zhongbiaodanwei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">合同金额：</td><td><input name='hetongjine' type='text' id='hetongjine' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelhetongjine' />必需数字型</td></tr>
		<tr><td  width="200">结算金额（不含税）：</td><td><input name='jiesuanjinebuhanshui' type='text' id='jiesuanjinebuhanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljiesuanjinebuhanshui' />必需数字型</td></tr>
		<tr><td>招标方式：</td><td><select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="市招">市招</option><option value="省招">省招</option></select></td></tr>
		<tr><td  width="200">招标批次：</td><td><input name='zhaobiaopici' type='text' id='zhaobiaopici' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">合同名称：</td><td><input name='hetongmingcheng' type='text' id='hetongmingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">合同编号：</td><td><input name='hetongbianhao' type='text' id='hetongbianhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fujian')"  /></div></td></tr>
		<tr><td  width="200">大类：</td><td><input name='dalei' type='text' id='dalei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">中类：</td><td><input name='zhonglei' type='text' id='zhonglei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">小类：</td><td><input name='xiaolei' type='text' id='xiaolei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">招标辞条：</td><td><textarea name='zhaobiaocitiao'  id='zhaobiaocitiao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		<tr><td  width="200">中标金额（含税）：</td><td><input name='zhongbiaojinehanshui' type='text' id='zhongbiaojinehanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelzhongbiaojinehanshui' />必需数字型</td></tr>
		<tr><td  width="200">批准文号：</td><td><input name='pizhunwenhao' type='text' id='pizhunwenhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">技术规范ID号：</td><td><input name='jishuguifanIDhao' type='text' id='jishuguifanIDhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td width="200">开工日：</td><td><input name='kaigongri' type='text' id='kaigongri' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
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
 
	var ERPpingzhenghaoobj = document.getElementById("ERPpingzhenghao"); if(ERPpingzhenghaoobj.value==""){document.getElementById("clabelERPpingzhenghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入ERP凭证号</font>";return false;}else{document.getElementById("clabelERPpingzhenghao").innerHTML="  "; } 
	var xiangmulaiyuanobj = document.getElementById("xiangmulaiyuan"); if(xiangmulaiyuanobj.value==""){document.getElementById("clabelxiangmulaiyuan").innerHTML="&nbsp;&nbsp;<font color=red>请输入项目来源</font>";return false;}else{document.getElementById("clabelxiangmulaiyuan").innerHTML="  "; } 
	var yusuanxiadajinebuhanshuiobj = document.getElementById("yusuanxiadajinebuhanshui"); if(yusuanxiadajinebuhanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(yusuanxiadajinebuhanshuiobj.value)){document.getElementById("clabelyusuanxiadajinebuhanshui").innerHTML=""; }else{document.getElementById("clabelyusuanxiadajinebuhanshui").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var hetongjineobj = document.getElementById("hetongjine"); if(hetongjineobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(hetongjineobj.value)){document.getElementById("clabelhetongjine").innerHTML=""; }else{document.getElementById("clabelhetongjine").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var jiesuanjinebuhanshuiobj = document.getElementById("jiesuanjinebuhanshui"); if(jiesuanjinebuhanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jiesuanjinebuhanshuiobj.value)){document.getElementById("clabeljiesuanjinebuhanshui").innerHTML=""; }else{document.getElementById("clabeljiesuanjinebuhanshui").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var zhongbiaojinehanshuiobj = document.getElementById("zhongbiaojinehanshui"); if(zhongbiaojinehanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(zhongbiaojinehanshuiobj.value)){document.getElementById("clabelzhongbiaojinehanshui").innerHTML=""; }else{document.getElementById("clabelzhongbiaojinehanshui").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
