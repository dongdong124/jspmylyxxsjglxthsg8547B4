<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�߲��쵼</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���и߲��쵼�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���룺<input name="mima" type="text" id="mima" class="form-control2" />  ���ţ�<input name="bumen" type="text" id="bumen" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='gaocenglingdao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>�û���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc' width='65' align='center'>��ְ����</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>����</td>        
	
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"gaocenglingdao"); 
    String url = "gaocenglingdao_list.jsp?1=1"; 
    String sql =  "select * from gaocenglingdao where 1=1";
	if(request.getParameter("mima")=="" ||request.getParameter("mima")==null ){}else{sql=sql+" and mima like '%"+request.getParameter("mima")+"%'";}if(request.getParameter("bumen")=="" ||request.getParameter("bumen")==null ){}else{sql=sql+" and bumen like '%"+request.getParameter("bumen")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("bumen") %></td>    <td><%=map.get("ruzhiriqi") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("youxiang") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="gaocenglingdao_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="gaocenglingdao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="gaocenglingdao_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

