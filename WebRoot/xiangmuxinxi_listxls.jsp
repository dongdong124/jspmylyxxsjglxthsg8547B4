<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xiangmuxinxi.xls");
%>
<html>
  <head>
    <title>��Ŀ��Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>������Ŀ��Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ERPƾ֤��</td>    <td bgcolor='#cccccc'>��Ŀ��Դ</td>    <td bgcolor='#cccccc'>��Ŀ���</td>    <td bgcolor='#cccccc'>��Ŀʵʩ���</td>    <td bgcolor='#cccccc'>��Ŀ����</td>    <td bgcolor='#cccccc'>��Ŀ�����</td>    <td bgcolor='#cccccc'>Ԥ���´������˰��</td>    <td bgcolor='#cccccc'>��Ŀ������</td>    <td bgcolor='#cccccc'>�б굥λ</td>    <td bgcolor='#cccccc'>��ͬ���</td>    <td bgcolor='#cccccc'>���������˰��</td>    <td bgcolor='#cccccc'>�б귽ʽ</td>    <td bgcolor='#cccccc'>�б�����</td>    <td bgcolor='#cccccc'>��ͬ����</td>    <td bgcolor='#cccccc'>��ͬ���</td>    <td bgcolor='#cccccc' width='90' align='center'>����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>С��</td>        <td bgcolor='#cccccc'>�б����˰��</td>    <td bgcolor='#cccccc'>��׼�ĺ�</td>    <td bgcolor='#cccccc'>�����淶ID��</td>    <td bgcolor='#cccccc' width='65' align='center'>������</td>        
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

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
    <td><%=map.get("ERPpingzhenghao") %></td>    <td><%=map.get("xiangmulaiyuan") %></td>    <td><%=map.get("xiangmuleibie") %></td>    <td><%=map.get("xiangmushishinianfen") %></td>    <td><%=map.get("xiangmumingcheng") %></td>    <td><%=map.get("xiangmudingyihao") %></td>    <td><%=map.get("yusuanxiadajinebuhanshui") %></td>    <td><%=map.get("xiangmufuzeren") %></td>    <td><%=map.get("zhongbiaodanwei") %></td>    <td><%=map.get("hetongjine") %></td>    <td><%=map.get("jiesuanjinebuhanshui") %></td>    <td><%=map.get("zhaobiaofangshi") %></td>    <td><%=map.get("zhaobiaopici") %></td>    <td><%=map.get("hetongmingcheng") %></td>    <td><%=map.get("hetongbianhao") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>����</a></td>    <td><%=map.get("dalei") %></td>    <td><%=map.get("zhonglei") %></td>    <td><%=map.get("xiaolei") %></td>        <td><%=map.get("zhongbiaojinehanshui") %></td>    <td><%=map.get("pizhunwenhao") %></td>    <td><%=map.get("jishuguifanIDhao") %></td>    <td><%=map.get("kaigongri") %></td>        
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

