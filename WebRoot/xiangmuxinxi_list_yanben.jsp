<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>项目信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有项目信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索: 项目来源：<select name='xiangmulaiyuan' id='xiangmulaiyuan' class="form-control2"><option value="">所有</option><option value="省公司">省公司</option><option value="分公司">分公司</option></select> 项目类别：<select name='xiangmuleibie' id='xiangmuleibie' class="form-control2"><option value="">所有</option><option value="资本">资本</option><option value="成本">成本</option></select>  项目名称：<input name="xiangmumingcheng" type="text" id="xiangmumingcheng" class="form-control2"  /> 招标方式：<select name='zhaobiaofangshi' id='zhaobiaofangshi' class="form-control2"><option value="">所有</option><option value="市招">市招</option><option value="省招">省招</option></select>
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xiangmuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>ERP凭证号</td>    <td bgcolor='#cccccc'>项目来源</td>    <td bgcolor='#cccccc'>项目类别</td>    <td bgcolor='#cccccc'>项目实施年份</td>    <td bgcolor='#cccccc'>项目名称</td>    <td bgcolor='#cccccc'>项目定义号</td>    <td bgcolor='#cccccc'>预算下达金额（不含税）</td>    <td bgcolor='#cccccc'>项目负责人</td>    <td bgcolor='#cccccc'>中标单位</td>    <td bgcolor='#cccccc'>合同金额</td>    <td bgcolor='#cccccc'>结算金额（不含税）</td>    <td bgcolor='#cccccc'>招标方式</td>    <td bgcolor='#cccccc'>大类</td>    <td bgcolor='#cccccc'>中类</td>    <td bgcolor='#cccccc'>小类</td>        <td bgcolor='#cccccc'>中标金额（含税）</td>    <td bgcolor='#cccccc'>批准文号</td>    <td bgcolor='#cccccc'>技术规范ID号</td>    <td bgcolor='#cccccc' width='65' align='center'>开工日</td>    
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xiangmuxinxi"); 
    String url = "xiangmuxinxi_list.jsp?1=1"; 
    String sql =  "select * from xiangmuxinxi where 1=1";
	if(request.getParameter("xiangmulaiyuan")=="" ||request.getParameter("xiangmulaiyuan")==null ){}else{sql=sql+" and xiangmulaiyuan like '%"+request.getParameter("xiangmulaiyuan")+"%'";}if(request.getParameter("xiangmuleibie")=="" ||request.getParameter("xiangmuleibie")==null ){}else{sql=sql+" and xiangmuleibie like '%"+request.getParameter("xiangmuleibie")+"%'";}if(request.getParameter("xiangmumingcheng")=="" ||request.getParameter("xiangmumingcheng")==null ){}else{sql=sql+" and xiangmumingcheng like '%"+request.getParameter("xiangmumingcheng")+"%'";}if(request.getParameter("zhaobiaofangshi")=="" ||request.getParameter("zhaobiaofangshi")==null ){}else{sql=sql+" and zhaobiaofangshi like '%"+request.getParameter("zhaobiaofangshi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("ERPpingzhenghao") %></td>    <td><%=map.get("xiangmulaiyuan") %></td>    <td><%=map.get("xiangmuleibie") %></td>    <td><%=map.get("xiangmushishinianfen") %></td>    <td><%=map.get("xiangmumingcheng") %></td>    <td><%=map.get("xiangmudingyihao") %></td>    <td><%=map.get("yusuanxiadajinebuhanshui") %></td>    <td><%=map.get("xiangmufuzeren") %></td>    <td><%=map.get("zhongbiaodanwei") %></td>    <td><%=map.get("hetongjine") %></td>    <td><%=map.get("jiesuanjinebuhanshui") %></td>    <td><%=map.get("zhaobiaofangshi") %></td>    <td><%=map.get("dalei") %></td>    <td><%=map.get("zhonglei") %></td>    <td><%=map.get("xiaolei") %></td>        <td><%=map.get("zhongbiaojinehanshui") %></td>    <td><%=map.get("pizhunwenhao") %></td>    <td><%=map.get("jishuguifanIDhao") %></td>    <td><%=map.get("kaigongri") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="xiangmuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

