<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<sql:query dataSource="jdbc/red" var="cities">select * from cities</sql:query>
<title>Cities</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/red/HTML/css/red.css">
</head>
<body>
    <h1>Cities by JSTL (don't do this in production!)</h1>
    <table>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>state</th>
        </tr>
        <c:forEach var="cur" items="${cities.rows}">
            <tr>
                <td>${cur.CITY_ID}</td>
                <td>${cur.CITY_NAME}</td>
                <td>${cur.STATE_NAME}</td>
            </tr>
        </c:forEach>
    </table>
    <p>
        Back <a href="/red/index.jsp">home</a>
    </p>
</body>
</html>