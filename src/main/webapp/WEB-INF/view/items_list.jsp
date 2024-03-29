<%--
  Created by IntelliJ IDEA.
  User: dupra
  Date: 13/11/2019
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" language="java" %>

<html>
<head>
    <title>Todo Items</title>
</head>
<body>
<div align="center">
    <c:url var="addUrl" value="${Mappings.ADD_ITEMS}"/>
    <a href="${addUrl}">New Item</a>
    <table border="1" cellpadding="5">
        <caption>
            <h2>Todo Items</h2>
        </caption>
        <tr>
            <th>Title</th>
            <th>Deadline</th>
            <th>Details</th>
            <th>View Item</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="item" items="${todoData.items}">
            <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}">
                <c:param name="id" value="${item.id}"/>
            </c:url>
            <c:url var="editUrl" value="${Mappings.UPDATE_ITEM}">
                <c:param name="id" value="${item.id}"/>
            </c:url>
            <c:url var="viewUrl" value="${Mappings.VIEW_ITEM}">
                <c:param name="id" value="${item.id}"/>
            </c:url>
            <tr>
                <td><c:out value="${item.title}"/></td>
                <td><c:out value="${item.deadline}"/></td>
                <td><c:out value="${item.details}"/></td>
                <td><a href="${viewUrl}">View Item</a></td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>

            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>
