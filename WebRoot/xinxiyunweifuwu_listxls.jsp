<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xinxiyunweifuwu.xls");
%>
<html>
  <head>
    <title>��Ϣ��ά����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>������Ϣ��ά�����б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>������</td>    <td bgcolor='#cccccc'>��������</td>    <td bgcolor='#cccccc'>���Ƶ�λ</td>    <td bgcolor='#cccccc'>��ά����</td>    <td bgcolor='#cccccc'>��ά���ŷ���</td>    <td bgcolor='#cccccc'>�ƻ����</td>    <td bgcolor='#cccccc'>�ƻ�����Ԫ��</td>    <td bgcolor='#cccccc' width='90' align='center'>����</td>    <td bgcolor='#cccccc' width='95' align='center'>����ʼʱ��</td>    <td bgcolor='#cccccc' width='95' align='center'>�������ʱ��</td>    <td bgcolor='#cccccc' width='95' align='center'>����޸�ʱ��</td>            
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "xinxiyunweifuwu_list.jsp?1=1"; 
    String sql =  "select * from xinxiyunweifuwu where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("fuwubianhao") %></td>    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("bianzhidanwei") %></td>    <td><%=map.get("yunweibumen") %></td>    <td><%=map.get("yunweibumenfenlei") %></td>    <td><%=map.get("jihuaniandu") %></td>    <td><%=map.get("jihuajinewanyuan") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>����</a></td>    <td><%=map.get("fuwukaishishijian") %></td>    <td><%=map.get("fuwujieshushijian") %></td>    <td><%=map.get("zuihouxiugaishijian") %></td>            
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

