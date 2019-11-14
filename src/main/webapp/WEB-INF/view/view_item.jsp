<%--
  Created by IntelliJ IDEA.
  User: dupra
  Date: 14/11/2019
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" language="java" %>
<html>
<head>
    <title>Item view</title>
</head>
<body>

<div align="center">
    <table>
        <tr>
            <td><label>ID</label></td>
            <td>
            <td><c:out value="${todoItem.id}"/></td>
        </tr>
        <tr>
            <td><label>Title</label></td>
            <td><c:out value="${todoItem.title}"/></td>
        </tr>
        <tr>
            <td><label>Deadline</label></td>
            <td><c:out value="${todoItem.deadline}"/></td>
        </tr>
        <tr>
            <td><label>Details</label></td>
            <td><c:out value="${todoItem.details}"/></td>
        </tr>
    </table>
    <c:url var="itemList" value="${Mappings.ITEMS}"/>
    <h2><a href="${itemList}">Show To do Items</a></h2>
</div>

</body>
</html>
