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
    
    <title>My JSP 'pifccys.jsp' starting page</title>
    
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
            <h3>展示货币信息</h3>
         <table rules="rows">
           <tr>
              <td>货币码</td>
              <td>中文货币名称</td>
              <td>国内货币符号</td>
              <td>货币状态</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${pifccyList}" var="pifccy">
              <tr>
                <td>${pifccy.cur_cde }</td>
	            <td>${pifccy.cur_nmc }</td>
	            <td>${pifccy.dom_cde }</td>
	            <td>${pifccy.cur_sts }</td>
	            <td><a href="pifccy/edit.html?cur_cde=${pifccy.cur_cde }">修改</a>|
	                <a href="pifccy/delete.html?cur_cde=${pifccy.cur_cde }">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="pifccy/add.html">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
  </body>
</html>
