<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ŀ��Ϣ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xiangmuxinxi");
     %>
  ��Ŀ��Ϣ��ϸ:
  <br><br>
   
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ERPƾ֤�ţ�</td><td width='39%'><%=m.get("ERPpingzhenghao")%></td>
<td width='11%'>��Ŀ��Դ��</td><td width='39%'><%=m.get("xiangmulaiyuan")%></td></tr><tr>
<td width='11%'>��Ŀ���</td><td width='39%'><%=m.get("xiangmuleibie")%></td>
<td width='11%'>��Ŀʵʩ��ݣ�</td><td width='39%'><%=m.get("xiangmushishinianfen")%></td></tr><tr>
<td width='11%'>��Ŀ���ƣ�</td><td width='39%'><%=m.get("xiangmumingcheng")%></td>
<td width='11%'>��Ŀ����ţ�</td><td width='39%'><%=m.get("xiangmudingyihao")%></td></tr><tr>
<td width='11%'>Ԥ���´������˰����</td><td width='39%'><%=m.get("yusuanxiadajinebuhanshui")%></td>
<td width='11%'>��Ŀ�����ˣ�</td><td width='39%'><%=m.get("xiangmufuzeren")%></td></tr><tr>
<td width='11%'>�б굥λ��</td><td width='39%'><%=m.get("zhongbiaodanwei")%></td>
<td width='11%'>��ͬ��</td><td width='39%'><%=m.get("hetongjine")%></td></tr><tr>
<td width='11%'>���������˰����</td><td width='39%'><%=m.get("jiesuanjinebuhanshui")%></td>
<td width='11%'>�б귽ʽ��</td><td width='39%'><%=m.get("zhaobiaofangshi")%></td></tr><tr>
<td width='11%'>�б����Σ�</td><td width='39%'><%=m.get("zhaobiaopici")%></td>
<td width='11%'>��ͬ���ƣ�</td><td width='39%'><%=m.get("hetongmingcheng")%></td></tr><tr>
<td width='11%'>��ͬ��ţ�</td><td width='39%'><%=m.get("hetongbianhao")%></td>
<td width='11%'>������</td><td width='39%'><a href="<%=m.get("fujian")%>">�������</a></td></tr><tr>
<td width='11%'>���ࣺ</td><td width='39%'><%=m.get("dalei")%></td>
<td width='11%'>���ࣺ</td><td width='39%'><%=m.get("zhonglei")%></td></tr><tr>
<td width='11%'>С�ࣺ</td><td width='39%'><%=m.get("xiaolei")%></td>
<td width='11%'>�б������</td><td width='39%'><%=m.get("zhaobiaocitiao")%></td></tr><tr>
<td width='11%'>�б����˰����</td><td width='39%'><%=m.get("zhongbiaojinehanshui")%></td>
<td width='11%'>��׼�ĺţ�</td><td width='39%'><%=m.get("pizhunwenhao")%></td></tr><tr>
<td width='11%'>�����淶ID�ţ�</td><td width='39%'><%=m.get("jishuguifanIDhao")%></td>
<td width='11%'>�����գ�</td><td width='39%'><%=m.get("kaigongri")%></td></tr><tr>
<td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



