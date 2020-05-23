<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2020/5/23
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="padding: 100px">
    <h2 class="text-center">Welcome ${login_name}</h2><br><br>
    <div class="btn-group col-md-offset-5">
        <button type="button" class="btn btn-primary" id="publish">Publish</button>
        <button type="button" class="btn btn-primary" id="check">Check</button>
        <button type="button" class="btn btn-primary" id="browse">Browse</button>
    </div>
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $("#check").click(function () {
            window.location.href = "${pageContext.request.contextPath}/view/Check.jsp";
        });
        $("#publish").click(function () {
            window.location.href = "${pageContext.request.contextPath}/view/resume.jsp"
        });
        $("#browse").click(function () {
            window.location.href = "${pageContext.request.contextPath}/view/application.jsp"
        })
    })
</script>
</body>
</html>
