<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resume</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <%@ include file="head.jsp"%><br>
    <form role="form" class="form-horizontal" action="resume.cc" method="post">
        <div class="form-group">
            <label class="control-label col-md-5" for="resume">Resume</label>
            <div class="col-md-3">
                <textarea class="form-control" id="resume" name="resume" rows="3"></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-5 col-md-1">
                <button type="submit" class="btn btn-primary" id="submit">Submit</button>
            </div>
            <div class="col-md-offset-7">
                <button type="reset" class="btn btn-primary">Reset</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
