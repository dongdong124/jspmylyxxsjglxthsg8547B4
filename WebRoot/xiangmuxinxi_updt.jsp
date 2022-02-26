<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>项目信息</title>
	 
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

new CommDAO().update(request,response,"xiangmuxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xiangmuxinxi"); 

%>
  <form  action="xiangmuxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改项目信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>ERP凭证号：</td><td><input name='ERPpingzhenghao' type='text' id='ERPpingzhenghao' value='<%= mmm.get("ERPpingzhenghao")%>' class="form-control" /></td></tr>
     <tr><td>项目来源：</td><td><select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="省公司">省公司</option><option value="分公司">分公司</option></select></td></tr><script language="javascript">document.form1.xiangmulaiyuan.value='<%=mmm.get("xiangmulaiyuan")%>';</script>
     <tr><td>项目类别：</td><td><select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="资本">资本</option><option value="成本">成本</option></select></td></tr><script language="javascript">document.form1.xiangmuleibie.value='<%=mmm.get("xiangmuleibie")%>';</script>
     <tr><td>项目实施年份：</td><td><input name='xiangmushishinianfen' type='text' id='xiangmushishinianfen' value='<%= mmm.get("xiangmushishinianfen")%>' class="form-control" /></td></tr>
     <tr><td>项目名称：</td><td><input name='xiangmumingcheng' type='text' id='xiangmumingcheng' value='<%= mmm.get("xiangmumingcheng")%>' class="form-control" /></td></tr>
     <tr><td>项目定义号：</td><td><input name='xiangmudingyihao' type='text' id='xiangmudingyihao' value='<%= mmm.get("xiangmudingyihao")%>' class="form-control" /></td></tr>
     <tr><td>预算下达金额（不含税）：</td><td><input name='yusuanxiadajinebuhanshui' type='text' id='yusuanxiadajinebuhanshui' value='<%= mmm.get("yusuanxiadajinebuhanshui")%>' class="form-control" /></td></tr>
     <tr><td>项目负责人：</td><td><input name='xiangmufuzeren' type='text' id='xiangmufuzeren' value='<%= mmm.get("xiangmufuzeren")%>' class="form-control" /></td></tr>
     <tr><td>中标单位：</td><td><input name='zhongbiaodanwei' type='text' id='zhongbiaodanwei' value='<%= mmm.get("zhongbiaodanwei")%>' class="form-control" /></td></tr>
     <tr><td>合同金额：</td><td><input name='hetongjine' type='text' id='hetongjine' value='<%= mmm.get("hetongjine")%>' class="form-control" /></td></tr>
     <tr><td>结算金额（不含税）：</td><td><input name='jiesuanjinebuhanshui' type='text' id='jiesuanjinebuhanshui' value='<%= mmm.get("jiesuanjinebuhanshui")%>' class="form-control" /></td></tr>
     <tr><td>招标方式：</td><td><select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="市招">市招</option><option value="省招">省招</option></select></td></tr><script language="javascript">document.form1.zhaobiaofangshi.value='<%=mmm.get("zhaobiaofangshi")%>';</script>
     <tr><td>招标批次：</td><td><input name='zhaobiaopici' type='text' id='zhaobiaopici' value='<%= mmm.get("zhaobiaopici")%>' class="form-control" /></td></tr>
     <tr><td>合同名称：</td><td><input name='hetongmingcheng' type='text' id='hetongmingcheng' value='<%= mmm.get("hetongmingcheng")%>' class="form-control" /></td></tr>
     <tr><td>合同编号：</td><td><input name='hetongbianhao' type='text' id='hetongbianhao' value='<%= mmm.get("hetongbianhao")%>' class="form-control" /></td></tr>
     <tr><td>附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fujian')"/></div></td></tr>
     <tr><td>大类：</td><td><input name='dalei' type='text' id='dalei' value='<%= mmm.get("dalei")%>' class="form-control" /></td></tr>
     <tr><td>中类：</td><td><input name='zhonglei' type='text' id='zhonglei' value='<%= mmm.get("zhonglei")%>' class="form-control" /></td></tr>
     <tr><td>小类：</td><td><input name='xiaolei' type='text' id='xiaolei' value='<%= mmm.get("xiaolei")%>' class="form-control" /></td></tr>
     <tr><td>招标辞条：</td><td><textarea name='zhaobiaocitiao' cols='50' rows='5' id='zhaobiaocitiao' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("zhaobiaocitiao")%></textarea></td></tr>
     <tr><td>中标金额（含税）：</td><td><input name='zhongbiaojinehanshui' type='text' id='zhongbiaojinehanshui' value='<%= mmm.get("zhongbiaojinehanshui")%>' class="form-control" /></td></tr>
     <tr><td>批准文号：</td><td><input name='pizhunwenhao' type='text' id='pizhunwenhao' value='<%= mmm.get("pizhunwenhao")%>' class="form-control" /></td></tr>
     <tr><td>技术规范ID号：</td><td><input name='jishuguifanIDhao' type='text' id='jishuguifanIDhao' value='<%= mmm.get("jishuguifanIDhao")%>' class="form-control" /></td></tr>
     <tr><td>开工日：</td><td><input name='kaigongri' type='text' id='kaigongri' value='<%= mmm.get("kaigongri")%>' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


