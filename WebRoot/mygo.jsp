<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  <body>
  <%
if(request.getSession().getAttribute("cx").equals("�߲��쵼")){response.sendRedirect("left_gaocenglingdao.jsp");}if(request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա")){response.sendRedirect("left_guanliyuan.jsp");}if(request.getSession().getAttribute("cx").equals("Ա��")){response.sendRedirect("left_yuangong.jsp");}
 %>
  </body>
</html>
