<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifitms.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
td{
 border:#cccccc solid;border-width:0 1 1 0; width: 100px;
}
table{
 border:#cccccc solid;border-width:1 0 0 1;margin: 0 auto; width: 980px;
}
</style>
  </head>
  
  <body>
       <div style="width: 100%; height: 100%;">
            <h3>展示科目信息</h3>
             ${result }
         <table rules="rows">
           <tr>
              <td>科目号</td>
              <td>科目名称</td>
              <td>科目类型</td>
              <td>科目性质</td>
              <td>科目级别</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${pifitmList}" var="pifitm">
              <tr>
                <td>${pifitm.itm_num }</td>
	            <td>${pifitm.itm_nam }</td>
	            <td>${pifitm.itm_typ }</td>
	            <td>${pifitm.itm_atr }</td>
	            <td>${pifitm.itm_cla }</td>
	            <td><a href="pifitm/edit.html?itm_num=${pifitm.itm_num }">修改</a>|
	                <a href="pifitm/delete.html?itm_num=${pifitm.itm_num }">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="pifitm/add.html">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
  </body>
</html>
