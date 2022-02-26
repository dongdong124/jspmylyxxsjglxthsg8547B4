<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>项目信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xiangmuxinxi");
     %>
  项目信息详细:
  <br><br>
   
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ERP凭证号：</td><td width='39%'><%=m.get("ERPpingzhenghao")%></td>
<td width='11%'>项目来源：</td><td width='39%'><%=m.get("xiangmulaiyuan")%></td></tr><tr>
<td width='11%'>项目类别：</td><td width='39%'><%=m.get("xiangmuleibie")%></td>
<td width='11%'>项目实施年份：</td><td width='39%'><%=m.get("xiangmushishinianfen")%></td></tr><tr>
<td width='11%'>项目名称：</td><td width='39%'><%=m.get("xiangmumingcheng")%></td>
<td width='11%'>项目定义号：</td><td width='39%'><%=m.get("xiangmudingyihao")%></td></tr><tr>
<td width='11%'>预算下达金额（不含税）：</td><td width='39%'><%=m.get("yusuanxiadajinebuhanshui")%></td>
<td width='11%'>项目负责人：</td><td width='39%'><%=m.get("xiangmufuzeren")%></td></tr><tr>
<td width='11%'>中标单位：</td><td width='39%'><%=m.get("zhongbiaodanwei")%></td>
<td width='11%'>合同金额：</td><td width='39%'><%=m.get("hetongjine")%></td></tr><tr>
<td width='11%'>结算金额（不含税）：</td><td width='39%'><%=m.get("jiesuanjinebuhanshui")%></td>
<td width='11%'>招标方式：</td><td width='39%'><%=m.get("zhaobiaofangshi")%></td></tr><tr>
<td width='11%'>招标批次：</td><td width='39%'><%=m.get("zhaobiaopici")%></td>
<td width='11%'>合同名称：</td><td width='39%'><%=m.get("hetongmingcheng")%></td></tr><tr>
<td width='11%'>合同编号：</td><td width='39%'><%=m.get("hetongbianhao")%></td>
<td width='11%'>附件：</td><td width='39%'><a href="<%=m.get("fujian")%>">点此下载</a></td></tr><tr>
<td width='11%'>大类：</td><td width='39%'><%=m.get("dalei")%></td>
<td width='11%'>中类：</td><td width='39%'><%=m.get("zhonglei")%></td></tr><tr>
<td width='11%'>小类：</td><td width='39%'><%=m.get("xiaolei")%></td>
<td width='11%'>招标辞条：</td><td width='39%'><%=m.get("zhaobiaocitiao")%></td></tr><tr>
<td width='11%'>中标金额（含税）：</td><td width='39%'><%=m.get("zhongbiaojinehanshui")%></td>
<td width='11%'>批准文号：</td><td width='39%'><%=m.get("pizhunwenhao")%></td></tr><tr>
<td width='11%'>技术规范ID号：</td><td width='39%'><%=m.get("jishuguifanIDhao")%></td>
<td width='11%'>开工日：</td><td width='39%'><%=m.get("kaigongri")%></td></tr><tr>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



