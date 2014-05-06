<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>LIST CONTENT</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>
<BODY>
<DIV>
<table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>费率主键</th>
            <th>货币码</th>  
            <th>费率代码</th>
            <th>收费大类</th>
            <th>收费细类</th>
            <th>启动日期</th>
            <th>收费码</th>
            <th>收费名称</th>
            <th>凭证代码</th>
            <th>凭证名称</th>
            <th>费率浮动上限</th>
            <th>费率浮动下限</th>
            <th>浮动标记</th>
            <th>邮费</th>
            <th>手续费</th>
            <th>计费高限</th>
            <th>计费低限</th>
        </tr>
        </thead>
                <tbody>
          <c:forEach items="${feeRateList}" var="item"> 
            <tr>
                <td>${item.FRT_KEY}</td>
                <td>${item.CUR_CDE}</td>
                <td>${item.FRT_KD1}</td>
                <td>${item.FRT_KD2}</td>
                <td>${item.EFF_DAT}</td>
                <td>${item.FRT_CDE}</td>
                <td>${item.FRT_NAM}</td>
                <td>${item.DOC_CDE}</td>
                <td>${item.DOC_NAM}</td>
                <td>${item.FRT_SPH}</td>
                <td>${item.FRT_SPL}</td>
                <td>${item.SPR_FLG}</td>
                <td>${item.MAL_FEE}</td>
                <td>${item.COM_FEE}</td>
                <td>${item.FEE_RAT}</td>
                <td>${item.HIG_LIM}</td>
                <td>${item.LOW_LIM}</td>
                
                <TD> <a href="deleteExchange?id=${item.FRT_KEY}">删除</a></TD>
                <TD> <a href="#">修改</a></TD>
                <td> <a href="addExchange">添加</a></td>
            </tr>		
            </c:forEach>
            
           
        </tbody>
        
        </table>     
		</div>
	</body>
</html>
