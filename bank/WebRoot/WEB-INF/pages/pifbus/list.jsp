<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/pages/header.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
      <div class="container">
          <table class="table table-hover <%--table-bordered--%> table-responsive">
              <thead>
              <tr>
                  <th>#</th>
                  <th>应用码</th>
                  <th>对应的核算科目号</th>
                  <th>对应的应用码</th>
                  <th>业务描述</th>
                  <th>业务简称</th>
                  <th>最后更新日期</th>
                  <th>更新柜员</th>
                  <th>业务大类</th>
                  <th>业务小类</th>
                  <th>记录状态</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${pifbus}" varStatus="status" var="item">
                  <tr>
                      <td>${status.count}</td>
                      <td>${item.app_cde}</td>
                      <td>${item.bus_itm}</td>
                      <td>${item.bus_app}</td>
                      <td>${item.bus_nam}</td>
                      <td>${item.bus_snm}</td>
                      <td>${item.upt_dat}</td>
                      <td>${item.upt_tlr}</td>
                      <td>${item.bus_kd1}</td>
                      <td>${item.bus_kd2}</td>
                      <td>${item.rec_sts}</td>
                      <td>
                          <a href="${basePath}/pifbus/info?id=${item.bus_cde}"> info </a>
                          <a href="${basePath}/pifbus/add"> add </a>
                          <a href="${basePath}/pifbus/update?id=${item.bus_cde}"> update </a>
                          <a href="${basePath}/pifbus/delete?id=${item.bus_cde}" onclick="return delConfirm('sure to delete?')"> delete </a>
                      </td>
                  </tr>
              </c:forEach>
              </tbody>
          </table>
      </div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>
