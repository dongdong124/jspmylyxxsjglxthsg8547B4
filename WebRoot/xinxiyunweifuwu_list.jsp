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
  </head>


  <body >
  <p>������Ϣ��ά�����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �����ţ�<input name="fuwubianhao" type="text" id="fuwubianhao" class="form-control2" />  �������ƣ�<input name="fuwumingcheng" type="text" id="fuwumingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xinxiyunweifuwu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>������</td>    <td bgcolor='#cccccc'>��������</td>    <td bgcolor='#cccccc'>���Ƶ�λ</td>    <td bgcolor='#cccccc'>��ά����</td>    <td bgcolor='#cccccc'>��ά���ŷ���</td>    <td bgcolor='#cccccc'>�ƻ����</td>    <td bgcolor='#cccccc'>�ƻ�����Ԫ��</td>    <td bgcolor='#cccccc' width='90' align='center'>����</td>    <td bgcolor='#cccccc' width='95' align='center'>����ʼʱ��</td>    <td bgcolor='#cccccc' width='95' align='center'>�������ʱ��</td>    <td bgcolor='#cccccc' width='95' align='center'>����޸�ʱ��</td>            
	
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xinxiyunweifuwu"); 
    String url = "xinxiyunweifuwu_list.jsp?1=1"; 
    String sql =  "select * from xinxiyunweifuwu where 1=1";
	if(request.getParameter("fuwubianhao")=="" ||request.getParameter("fuwubianhao")==null ){}else{sql=sql+" and fuwubianhao like '%"+request.getParameter("fuwubianhao")+"%'";}if(request.getParameter("fuwumingcheng")=="" ||request.getParameter("fuwumingcheng")==null ){}else{sql=sql+" and fuwumingcheng like '%"+request.getParameter("fuwumingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("fuwubianhao") %></td>    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("bianzhidanwei") %></td>    <td><%=map.get("yunweibumen") %></td>    <td><%=map.get("yunweibumenfenlei") %></td>    <td><%=map.get("jihuaniandu") %></td>    <td><%=map.get("jihuajinewanyuan") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>����</a></td>    <td><%=map.get("fuwukaishishijian") %></td>    <td><%=map.get("fuwujieshushijian") %></td>    <td><%=map.get("zuihouxiugaishijian") %></td>            
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="xinxiyunweifuwu_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="xinxiyunweifuwu_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="xinxiyunweifuwu_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

