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
  </head>


  <body >
  <p>������Ŀ��Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����: ��Ŀ��Դ��<select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="">����</option><option value="ʡ��˾">ʡ��˾</option><option value="�ֹ�˾">�ֹ�˾</option></select> ��Ŀ���<select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="">����</option><option value="�ʱ�">�ʱ�</option><option value="�ɱ�">�ɱ�</option></select>  ��Ŀ���ƣ�<input name="xiangmumingcheng" type="text" id="xiangmumingcheng" class="form-control2"  /> �б귽ʽ��<select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="">����</option><option value="����">����</option><option value="ʡ��">ʡ��</option></select>
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xiangmuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ERPƾ֤��</td>
	
    <td width="138" align="center" bgcolor="cccccc">����ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xiangmuxinxi"); 
    String url = "xiangmuxinxi_list.jsp?1=1"; 
    String sql =  "select * from xiangmuxinxi where 1=1";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("ERPpingzhenghao") %></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="xiangmuxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>
