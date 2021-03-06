<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All cars current driver</title>
</head>
<body>
<h1 class="table_dark">All cars:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Drivers</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.name}"/>
            </td>
            <td>
                <c:out value="${car.licenseNumber}"/>
            </td>
            <td>
                <c:out value="${car.login}"/>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/index">
                Home page
            </a>
        </td>
    </tr>
</table>
</body>
</html>
