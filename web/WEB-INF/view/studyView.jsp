<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>风雨扬尘</title>
<link type="text/css" rel="stylesheet" href="static/css/study.css" />
    <script type="text/javascript" src="static/js/base64.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
</head>
<body>
<script>
    $(document).ready(function(e){
        var dt = '${data}';
        dd = Base64.decode(dt);
        $("#data").html(dd);
    });
</script>
<header class="headbar">
    <a href="/home">首页</a>
    <a href="/study">学习笔记</a>
    <a href="/blog">日志</a>
    <a href="/blog">备忘</a>
    <a href="/album">图片</a>
    <a href="#">视频</a>
</header>
<div class="headContent2">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div><!-- headContent -->
<div class="content">
<h3 align="center">${title}</h3>
<span id="data">

</span>

</div><!-- content -->
</body>
</html>