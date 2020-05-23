<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/19
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>学生实习管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">--%>
</head>
<body>
<div class="container" style="padding: 100px">
    <h2 class="text-center">Welcome to Student's Practice Manage System</h2><br><br>
    <form role="form" class="form-horizontal" action="login.cc" method="post">
        <div class="form-group">
            <label for="username" class="col-md-5 control-label">Name</label>
            <div class="col-md-3">
                <input type="text" class="form-control" id="username" placeholder="Please Enter Your Name"
                       name="username">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-md-5 control-label">Password</label>
            <div class="col-md-3">
                <input type="password" class="form-control" id="password" placeholder="Please Enter Your Password"
                       name="password">
            </div>
        </div>
        <div class="form-group">
            <p id="hint" style="text-align: center"></p>
        </div>
        <div class="form-group">
            <div class="col-md-offset-5 col-md-1">
                <button type="submit" class="btn btn-primary" id="submit">Sign in</button>
            </div>
            <div class="col-md-offset-7">
                <button type="reset" class="btn btn-primary">Reset</button>
            </div>
        </div>
    </form>
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--<script src="WEB-INF/js/jquery-3.4.1.min.js"></script>--%>

</body>
</html>
