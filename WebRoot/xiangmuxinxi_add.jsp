<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��Ŀ��Ϣ</title>
	
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










new CommDAO().insert(request,response,"xiangmuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="xiangmuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  �����Ŀ��Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">ERPƾ֤�ţ�</td><td><input name='ERPpingzhenghao' type='text' id='ERPpingzhenghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelERPpingzhenghao' /></td></tr>
		<tr><td>��Ŀ��Դ��</td><td><select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="ʡ��˾">ʡ��˾</option><option value="�ֹ�˾">�ֹ�˾</option></select>&nbsp;*<label id='clabelxiangmulaiyuan' /></td></tr>
		<tr><td>��Ŀ���</td><td><select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="�ʱ�">�ʱ�</option><option value="�ɱ�">�ɱ�</option></select></td></tr>
		<tr><td  width="200">��Ŀʵʩ��ݣ�</td><td><input name='xiangmushishinianfen' type='text' id='xiangmushishinianfen' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">��Ŀ���ƣ�</td><td><input name='xiangmumingcheng' type='text' id='xiangmumingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">��Ŀ����ţ�</td><td><input name='xiangmudingyihao' type='text' id='xiangmudingyihao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Ԥ���´������˰����</td><td><input name='yusuanxiadajinebuhanshui' type='text' id='yusuanxiadajinebuhanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelyusuanxiadajinebuhanshui' />����������</td></tr>
		<tr><td  width="200">��Ŀ�����ˣ�</td><td><input name='xiangmufuzeren' type='text' id='xiangmufuzeren' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">�б굥λ��</td><td><input name='zhongbiaodanwei' type='text' id='zhongbiaodanwei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">��ͬ��</td><td><input name='hetongjine' type='text' id='hetongjine' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelhetongjine' />����������</td></tr>
		<tr><td  width="200">���������˰����</td><td><input name='jiesuanjinebuhanshui' type='text' id='jiesuanjinebuhanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljiesuanjinebuhanshui' />����������</td></tr>
		<tr><td>�б귽ʽ��</td><td><select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="����">����</option><option value="ʡ��">ʡ��</option></select></td></tr>
		<tr><td  width="200">�б����Σ�</td><td><input name='zhaobiaopici' type='text' id='zhaobiaopici' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">��ͬ���ƣ�</td><td><input name='hetongmingcheng' type='text' id='hetongmingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">��ͬ��ţ�</td><td><input name='hetongbianhao' type='text' id='hetongbianhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">������</td><td><input name='fujian' type='text' id='fujian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"  /></div></td></tr>
		<tr><td  width="200">���ࣺ</td><td><input name='dalei' type='text' id='dalei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">���ࣺ</td><td><input name='zhonglei' type='text' id='zhonglei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">С�ࣺ</td><td><input name='xiaolei' type='text' id='xiaolei' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">�б������</td><td><textarea name='zhaobiaocitiao'  id='zhaobiaocitiao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		<tr><td  width="200">�б����˰����</td><td><input name='zhongbiaojinehanshui' type='text' id='zhongbiaojinehanshui' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelzhongbiaojinehanshui' />����������</td></tr>
		<tr><td  width="200">��׼�ĺţ�</td><td><input name='pizhunwenhao' type='text' id='pizhunwenhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">�����淶ID�ţ�</td><td><input name='jishuguifanIDhao' type='text' id='jishuguifanIDhao' value='' onblur='' class="form-control" /></td></tr>
		<tr><td width="200">�����գ�</td><td><input name='kaigongri' type='text' id='kaigongri' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
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
 
	var ERPpingzhenghaoobj = document.getElementById("ERPpingzhenghao"); if(ERPpingzhenghaoobj.value==""){document.getElementById("clabelERPpingzhenghao").innerHTML="&nbsp;&nbsp;<font color=red>������ERPƾ֤��</font>";return false;}else{document.getElementById("clabelERPpingzhenghao").innerHTML="  "; } 
	var xiangmulaiyuanobj = document.getElementById("xiangmulaiyuan"); if(xiangmulaiyuanobj.value==""){document.getElementById("clabelxiangmulaiyuan").innerHTML="&nbsp;&nbsp;<font color=red>��������Ŀ��Դ</font>";return false;}else{document.getElementById("clabelxiangmulaiyuan").innerHTML="  "; } 
	var yusuanxiadajinebuhanshuiobj = document.getElementById("yusuanxiadajinebuhanshui"); if(yusuanxiadajinebuhanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(yusuanxiadajinebuhanshuiobj.value)){document.getElementById("clabelyusuanxiadajinebuhanshui").innerHTML=""; }else{document.getElementById("clabelyusuanxiadajinebuhanshui").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    var hetongjineobj = document.getElementById("hetongjine"); if(hetongjineobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(hetongjineobj.value)){document.getElementById("clabelhetongjine").innerHTML=""; }else{document.getElementById("clabelhetongjine").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    var jiesuanjinebuhanshuiobj = document.getElementById("jiesuanjinebuhanshui"); if(jiesuanjinebuhanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jiesuanjinebuhanshuiobj.value)){document.getElementById("clabeljiesuanjinebuhanshui").innerHTML=""; }else{document.getElementById("clabeljiesuanjinebuhanshui").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    var zhongbiaojinehanshuiobj = document.getElementById("zhongbiaojinehanshui"); if(zhongbiaojinehanshuiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(zhongbiaojinehanshuiobj.value)){document.getElementById("clabelzhongbiaojinehanshui").innerHTML=""; }else{document.getElementById("clabelzhongbiaojinehanshui").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
