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
    <title>项目信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有项目信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>ERP凭证号</td>    <td bgcolor='#cccccc'>项目来源</td>    <td bgcolor='#cccccc'>项目类别</td>    <td bgcolor='#cccccc'>项目实施年份</td>    <td bgcolor='#cccccc'>项目名称</td>    <td bgcolor='#cccccc'>项目定义号</td>    <td bgcolor='#cccccc'>预算下达金额（不含税）</td>    <td bgcolor='#cccccc'>项目负责人</td>    <td bgcolor='#cccccc'>中标单位</td>    <td bgcolor='#cccccc'>合同金额</td>    <td bgcolor='#cccccc'>结算金额（不含税）</td>    <td bgcolor='#cccccc'>招标方式</td>    <td bgcolor='#cccccc'>招标批次</td>    <td bgcolor='#cccccc'>合同名称</td>    <td bgcolor='#cccccc'>合同编号</td>    <td bgcolor='#cccccc' width='90' align='center'>附件</td>    <td bgcolor='#cccccc'>大类</td>    <td bgcolor='#cccccc'>中类</td>    <td bgcolor='#cccccc'>小类</td>        <td bgcolor='#cccccc'>中标金额（含税）</td>    <td bgcolor='#cccccc'>批准文号</td>    <td bgcolor='#cccccc'>技术规范ID号</td>    <td bgcolor='#cccccc' width='65' align='center'>开工日</td>        
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

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
    <td><%=map.get("ERPpingzhenghao") %></td>    <td><%=map.get("xiangmulaiyuan") %></td>    <td><%=map.get("xiangmuleibie") %></td>    <td><%=map.get("xiangmushishinianfen") %></td>    <td><%=map.get("xiangmumingcheng") %></td>    <td><%=map.get("xiangmudingyihao") %></td>    <td><%=map.get("yusuanxiadajinebuhanshui") %></td>    <td><%=map.get("xiangmufuzeren") %></td>    <td><%=map.get("zhongbiaodanwei") %></td>    <td><%=map.get("hetongjine") %></td>    <td><%=map.get("jiesuanjinebuhanshui") %></td>    <td><%=map.get("zhaobiaofangshi") %></td>    <td><%=map.get("zhaobiaopici") %></td>    <td><%=map.get("hetongmingcheng") %></td>    <td><%=map.get("hetongbianhao") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>    <td><%=map.get("dalei") %></td>    <td><%=map.get("zhonglei") %></td>    <td><%=map.get("xiaolei") %></td>        <td><%=map.get("zhongbiaojinehanshui") %></td>    <td><%=map.get("pizhunwenhao") %></td>    <td><%=map.get("jishuguifanIDhao") %></td>    <td><%=map.get("kaigongri") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

