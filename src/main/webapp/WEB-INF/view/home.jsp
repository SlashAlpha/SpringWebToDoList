<%--
  Created by IntelliJ IDEA.
  User: dupra
  Date: 13/11/2019
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" language="java" %>
<html>
<head>
    <title>TodoList Application</title>
</head>
<body>
<div align="center">
    <c:url var="itemLink" value="${Mappings.ITEMS}"/>
    <h2><a href="${itemLink}">Show To do Items</a></h2>

</div>
</body>
</html>
