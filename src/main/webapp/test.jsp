<%@ page import="com.ArtisticMoves.model.User" %><%--
  Created by IntelliJ IDEA.
  User: sumee
  Date: 11-09-2020
  Time: 04:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello world</h1>
<%
    User user = (User) session.getAttribute("user");
    out.println(user);
%>
</body>
</html>
