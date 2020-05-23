<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Check</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <%@ include file="head.jsp"%>
    <h2 class="text-center">Please Enter Student ID</h2><br><br>
    <form role="form" action="check.cc" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-5" for="id">ID</label>
            <div class="col-md-3">
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
        </div><br>
        <div class="form-group">
            <div class="col-md-offset-5 col-md-1">
                <button type="submit" class="btn btn-primary" id="check">Check</button>
            </div>
            <div class="col-md-offset-7">
                <button type="reset" class="btn btn-primary">Reset</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
