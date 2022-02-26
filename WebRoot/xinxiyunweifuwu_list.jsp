<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>信息运维服务</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有信息运维服务列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  服务编号：<input name="fuwubianhao" type="text" id="fuwubianhao" class="form-control2" />  服务名称：<input name="fuwumingcheng" type="text" id="fuwumingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xinxiyunweifuwu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>服务编号</td>    <td bgcolor='#cccccc'>服务名称</td>    <td bgcolor='#cccccc'>编制单位</td>    <td bgcolor='#cccccc'>运维部门</td>    <td bgcolor='#cccccc'>运维部门分类</td>    <td bgcolor='#cccccc'>计划年度</td>    <td bgcolor='#cccccc'>计划金额（万元）</td>    <td bgcolor='#cccccc' width='90' align='center'>附件</td>    <td bgcolor='#cccccc' width='95' align='center'>服务开始时间</td>    <td bgcolor='#cccccc' width='95' align='center'>服务结束时间</td>    <td bgcolor='#cccccc' width='95' align='center'>最后修改时间</td>            
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
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
    <td><%=map.get("fuwubianhao") %></td>    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("bianzhidanwei") %></td>    <td><%=map.get("yunweibumen") %></td>    <td><%=map.get("yunweibumenfenlei") %></td>    <td><%=map.get("jihuaniandu") %></td>    <td><%=map.get("jihuajinewanyuan") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>    <td><%=map.get("fuwukaishishijian") %></td>    <td><%=map.get("fuwujieshushijian") %></td>    <td><%=map.get("zuihouxiugaishijian") %></td>            
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="xinxiyunweifuwu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="xinxiyunweifuwu_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="xinxiyunweifuwu_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

