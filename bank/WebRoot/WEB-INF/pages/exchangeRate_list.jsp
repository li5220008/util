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
            <th>汇率主键</th>
            <th>货币码</th>
            <th>第二货币</th>
            <th>汇率种类</th>
            <th>启动日期</th>
            <th>启动时间</th>
            <th>当天使用标记</th>
            <th>当天修改标记</th>
            <th>汇率值</th>
            <th>汇率标识</th>
            <th>建档柜员</th>
            <th>建档日期</th>
            <th>建档时间</th>
            <th>最后更新日期</th>
            <th>更新柜员</th>
            <th>记录状态</th>
        </tr>
        </thead>
                <tbody>
          <c:forEach items="${list}" var="item"> 
            <tr>
                <td>${item.XRT_KEY}</td>
                <td>${item.CUR_CDE}</td>
                <td>${item.SEC_CCY}</td>
                <td>${item.XRT_CDE}</td>
                <td>${item.EFF_DAT}</td>
                <td>${item.EFF_TIM}</td>
                <td>${item.CUR_FLG}</td>
                <td>${item.MOD_FLG}</td>
                <td>${item.RAT_VAL}</td>
                <td>${item.RAT_FLG}</td>
                <td>${item.CRE_TLR}</td>
                <td>${item.CRE_DAT}</td>
                <td>${item.CRE_TIM}</td>
                <td>${item.UPT_DAT}</td>
                <td>${item.UPT_TLR}</td>
                <td>${item.REC_STS}</td>
                
                <TD> <a href="deleteExchange?id=${item.XRT_KEY}">删除</a></TD>
                <TD> <a href="#">修改</a></TD>
                <td> <a href="addExchange">添加</a></td>
            </tr>		
            </c:forEach>
            
           
        </tbody>
        
        </table>     
		</div>
	</body>
</html>
