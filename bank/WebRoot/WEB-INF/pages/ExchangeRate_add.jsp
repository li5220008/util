<%@ page language="java" import="java.util.*,com.gtafe.constants.GConstants" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
   Map<String,String> exchangeMap = GConstants.ExchangeRateConstants;
   Map<String,String> exchangeFlag = GConstants.ExchangeRateFlag;
   Map<String,String> exchangeBiaojia = GConstants.ExchangeRateBiaojia;
   Map<String,String> exchangeStatus = GConstants.ExchangeRateStatus;
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="fx" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
     <script type="text/javascript" src="<%=basePath %>resources/js/jquery-1.4.2.min.js">
    </script>
    <script>
    $(document).ready(function(){
      alert("hello"); 
    });
    </script>
		<title>add CONTENT</title>
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
<fx:form  method="post" modelAttribute="exchange">

货币码：<fx:input path="CUR_CDE"/>
第二货币：<fx:input path="SEC_CCY"/><br/>
汇率种类：<fx:select path="XRT_CDE" selected="--请选择">

<fx:options items="<%=exchangeMap%>"  ></fx:options></fx:select>
启动日期：<fx:input path="EFF_DAT"/><br/>
启动时间：<fx:input path="EFF_TIM"/>
当天使用标记：<fx:select path="CUR_FLG">
<fx:options items="<%=exchangeFlag%>"  ></fx:options></fx:select>
<br/>
当天修改标记：<fx:select path="MOD_FLG">
<fx:options items="<%=exchangeMap%>"  ></fx:options></fx:select>
汇率值：<fx:input path="RAT_VAL"/><br/>
汇率标识：<fx:select path="RAT_FLG">
<fx:options items="<%=exchangeBiaojia%>"  ></fx:options></fx:select>
建档柜员：<fx:input path="CRE_TLR"/><br/>
更新柜员：<fx:input path="UPT_TLR"/><br/>
记录状态：<fx:select path="REC_STS">
<fx:options items="<%=exchangeStatus%>"  ></fx:options></fx:select><br/>
<input type="submit" value="提交">
</fx:form>
</body>
</html>
