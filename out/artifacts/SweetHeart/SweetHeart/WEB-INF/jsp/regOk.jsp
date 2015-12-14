<%--
  Created by IntelliJ IDEA.
  User: Seven Yang
  Date: 2015/12/2
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>添加用户</title>
    <script type="text/javascript" src="static/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="static/jquery.md5.js"></script>
</head>
<style>
    html,body{
        width:100%;
        height:100%;background-color: cadetblue;
    }
    div#auth{
        position:absolute; width: 50%; height: 60%;
        left:25%; top: 30%; background-color: cadetblue;
    }
    .row{
        position:relative; width: 100%; height: 40px; margin-top: 10px;text-align: center;;
    }
    label{margin-right: 5px;}
</style>
<body>
Congratulations,
${info},You are our member now
</body>
</html>
