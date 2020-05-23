<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Grade</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <table class="table table-hover table-striped table-responsive">
        <thead>
            <tr>
                <th>ID</th>
                <th>Grade</th>
            </tr>

        </thead>
        <tbody>
            <tr class="success">
                <td>${id}</td>
                <td>${score}</td>
            </tr>
        </tbody>
    </table>
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
