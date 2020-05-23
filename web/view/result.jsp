<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px;">
    <div class="row"><h2 class="text-left text-muted col-md-6 col-md-offset-5">Tips</h2></div>
    <div class="row"><h3 class="text-left text-info col-md-6 col-md-offset-5">${requestScope.msg}</h3></div>
    <div class="row"><a href="${href}" class="col-md-offset-5 col-md-6 text-left"><strong>${empty href ? "" : "return"}</strong></a></div>
</div>
</body>
</html>
