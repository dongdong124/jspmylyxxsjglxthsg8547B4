<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ϣ��ά������ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xinxiyunweifuwu");
     %>
  ��Ϣ��ά������ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>�����ţ�</td><td width='39%'><%=m.get("fuwubianhao")%></td><td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("fuwumingcheng")%></td></tr><tr><td width='11%'>���Ƶ�λ��</td><td width='39%'><%=m.get("bianzhidanwei")%></td><td width='11%'>��ά���ţ�</td><td width='39%'><%=m.get("yunweibumen")%></td></tr><tr><td width='11%'>��ά���ŷ��ࣺ</td><td width='39%'><%=m.get("yunweibumenfenlei")%></td><td width='11%'>�ƻ���ȣ�</td><td width='39%'><%=m.get("jihuaniandu")%></td></tr><tr><td width='11%'>�ƻ�����Ԫ����</td><td width='39%'><%=m.get("jihuajinewanyuan")%></td><td width='11%'>������</td><td width='39%'><a href="<%=m.get("fujian")%>">�������</a></td></tr><tr><td width='11%'>����ʼʱ�䣺</td><td width='39%'><%=m.get("fuwukaishishijian")%></td><td width='11%'>�������ʱ�䣺</td><td width='39%'><%=m.get("fuwujieshushijian")%></td></tr><tr><td width='11%'>����޸�ʱ�䣺</td><td width='39%'><%=m.get("zuihouxiugaishijian")%></td><td width='11%'>����Ŀ�꣺</td><td width='39%'><%=m.get("fuwumubiao")%></td></tr><tr><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



