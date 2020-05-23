<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/22
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%%>
<html>
<head>
    <title>Teacher</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <%@ include file="head.jsp"%>
    <h2 class="text-center">Welcome Mrs/Mr ${login_name}</h2><br><br>
    <div class="btn-group col-md-offset-5">
        <button type="button" class="btn btn-primary" id="publish">Publish</button>
        <button type="button" class="btn btn-primary" id="check">Check</button>
    </div>
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $("#publish").click(function () {
            window.location.href = "${pageContext.request.contextPath}/view/addGrade.jsp";
        });
        $("#check").click(function () {
            window.location.href = "${pageContext.request.contextPath}/view/Check.jsp";
        })
    })
</script>
</body>
</html>
