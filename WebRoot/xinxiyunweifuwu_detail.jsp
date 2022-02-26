<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>信息运维服务详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xinxiyunweifuwu");
     %>
  信息运维服务详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>服务编号：</td><td width='39%'><%=m.get("fuwubianhao")%></td><td width='11%'>服务名称：</td><td width='39%'><%=m.get("fuwumingcheng")%></td></tr><tr><td width='11%'>编制单位：</td><td width='39%'><%=m.get("bianzhidanwei")%></td><td width='11%'>运维部门：</td><td width='39%'><%=m.get("yunweibumen")%></td></tr><tr><td width='11%'>运维部门分类：</td><td width='39%'><%=m.get("yunweibumenfenlei")%></td><td width='11%'>计划年度：</td><td width='39%'><%=m.get("jihuaniandu")%></td></tr><tr><td width='11%'>计划金额（万元）：</td><td width='39%'><%=m.get("jihuajinewanyuan")%></td><td width='11%'>附件：</td><td width='39%'><a href="<%=m.get("fujian")%>">点此下载</a></td></tr><tr><td width='11%'>服务开始时间：</td><td width='39%'><%=m.get("fuwukaishishijian")%></td><td width='11%'>服务结束时间：</td><td width='39%'><%=m.get("fuwujieshushijian")%></td></tr><tr><td width='11%'>最后修改时间：</td><td width='39%'><%=m.get("zuihouxiugaishijian")%></td><td width='11%'>服务目标：</td><td width='39%'><%=m.get("fuwumubiao")%></td></tr><tr><td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



