<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addGrade</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <%@ include file="head.jsp"%><br>
    <form role="form" class="form-horizontal" action="addGrade.cc" method="post">
        <div class="form-group">
            <label for="stu_id" class="col-md-5 control-label">Id</label>
            <div class="col-md-3">
                <input type="text" class="form-control" id="stu_id" placeholder="Please Enter Id" name="stu_id"
                       required>
            </div>
        </div>
        <div class="form-group">
            <label for="grade" class="col-md-5 control-label">Grade</label>
            <div class="col-md-3">
                <input type="text" class="form-control" id="grade" placeholder="Please Enter Grade" name="grade"
                       required>
            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="col-md-offset-5 col-md-1">
                <button type="submit" class="btn btn-primary" id="submit">Submit</button>
            </div>
            <div class="col-md-offset-7">
                <button type="reset" class="btn btn-primary" id="reset">Reset</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
