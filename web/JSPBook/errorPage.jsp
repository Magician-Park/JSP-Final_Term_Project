<%--
  Created by IntelliJ IDEA.
  User: 박재영
  Date: 2022-11-04
  Time: 오전 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="/Exercise/ch11/errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Exception</title>
</head>
<body>

<%
  int x = 1;
  if (x == 1) {
    throw new RuntimeException("오류 발생!!!");
  }
%>

</body>
</html>
