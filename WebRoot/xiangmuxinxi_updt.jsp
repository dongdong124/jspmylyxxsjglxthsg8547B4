<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ŀ��Ϣ</title>
	 
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
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
  �޸���Ŀ��Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>ERPƾ֤�ţ�</td><td><input name='ERPpingzhenghao' type='text' id='ERPpingzhenghao' value='<%= mmm.get("ERPpingzhenghao")%>' class="form-control" /></td></tr>
     <tr><td>��Ŀ��Դ��</td><td><select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="ʡ��˾">ʡ��˾</option><option value="�ֹ�˾">�ֹ�˾</option></select></td></tr><script language="javascript">document.form1.xiangmulaiyuan.value='<%=mmm.get("xiangmulaiyuan")%>';</script>
     <tr><td>��Ŀ���</td><td><select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="�ʱ�">�ʱ�</option><option value="�ɱ�">�ɱ�</option></select></td></tr><script language="javascript">document.form1.xiangmuleibie.value='<%=mmm.get("xiangmuleibie")%>';</script>
     <tr><td>��Ŀʵʩ��ݣ�</td><td><input name='xiangmushishinianfen' type='text' id='xiangmushishinianfen' value='<%= mmm.get("xiangmushishinianfen")%>' class="form-control" /></td></tr>
     <tr><td>��Ŀ���ƣ�</td><td><input name='xiangmumingcheng' type='text' id='xiangmumingcheng' value='<%= mmm.get("xiangmumingcheng")%>' class="form-control" /></td></tr>
     <tr><td>��Ŀ����ţ�</td><td><input name='xiangmudingyihao' type='text' id='xiangmudingyihao' value='<%= mmm.get("xiangmudingyihao")%>' class="form-control" /></td></tr>
     <tr><td>Ԥ���´������˰����</td><td><input name='yusuanxiadajinebuhanshui' type='text' id='yusuanxiadajinebuhanshui' value='<%= mmm.get("yusuanxiadajinebuhanshui")%>' class="form-control" /></td></tr>
     <tr><td>��Ŀ�����ˣ�</td><td><input name='xiangmufuzeren' type='text' id='xiangmufuzeren' value='<%= mmm.get("xiangmufuzeren")%>' class="form-control" /></td></tr>
     <tr><td>�б굥λ��</td><td><input name='zhongbiaodanwei' type='text' id='zhongbiaodanwei' value='<%= mmm.get("zhongbiaodanwei")%>' class="form-control" /></td></tr>
     <tr><td>��ͬ��</td><td><input name='hetongjine' type='text' id='hetongjine' value='<%= mmm.get("hetongjine")%>' class="form-control" /></td></tr>
     <tr><td>���������˰����</td><td><input name='jiesuanjinebuhanshui' type='text' id='jiesuanjinebuhanshui' value='<%= mmm.get("jiesuanjinebuhanshui")%>' class="form-control" /></td></tr>
     <tr><td>�б귽ʽ��</td><td><select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="����">����</option><option value="ʡ��">ʡ��</option></select></td></tr><script language="javascript">document.form1.zhaobiaofangshi.value='<%=mmm.get("zhaobiaofangshi")%>';</script>
     <tr><td>�б����Σ�</td><td><input name='zhaobiaopici' type='text' id='zhaobiaopici' value='<%= mmm.get("zhaobiaopici")%>' class="form-control" /></td></tr>
     <tr><td>��ͬ���ƣ�</td><td><input name='hetongmingcheng' type='text' id='hetongmingcheng' value='<%= mmm.get("hetongmingcheng")%>' class="form-control" /></td></tr>
     <tr><td>��ͬ��ţ�</td><td><input name='hetongbianhao' type='text' id='hetongbianhao' value='<%= mmm.get("hetongbianhao")%>' class="form-control" /></td></tr>
     <tr><td>������</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"/></div></td></tr>
     <tr><td>���ࣺ</td><td><input name='dalei' type='text' id='dalei' value='<%= mmm.get("dalei")%>' class="form-control" /></td></tr>
     <tr><td>���ࣺ</td><td><input name='zhonglei' type='text' id='zhonglei' value='<%= mmm.get("zhonglei")%>' class="form-control" /></td></tr>
     <tr><td>С�ࣺ</td><td><input name='xiaolei' type='text' id='xiaolei' value='<%= mmm.get("xiaolei")%>' class="form-control" /></td></tr>
     <tr><td>�б������</td><td><textarea name='zhaobiaocitiao' cols='50' rows='5' id='zhaobiaocitiao' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("zhaobiaocitiao")%></textarea></td></tr>
     <tr><td>�б����˰����</td><td><input name='zhongbiaojinehanshui' type='text' id='zhongbiaojinehanshui' value='<%= mmm.get("zhongbiaojinehanshui")%>' class="form-control" /></td></tr>
     <tr><td>��׼�ĺţ�</td><td><input name='pizhunwenhao' type='text' id='pizhunwenhao' value='<%= mmm.get("pizhunwenhao")%>' class="form-control" /></td></tr>
     <tr><td>�����淶ID�ţ�</td><td><input name='jishuguifanIDhao' type='text' id='jishuguifanIDhao' value='<%= mmm.get("jishuguifanIDhao")%>' class="form-control" /></td></tr>
     <tr><td>�����գ�</td><td><input name='kaigongri' type='text' id='kaigongri' value='<%= mmm.get("kaigongri")%>' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


