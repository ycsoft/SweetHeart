<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>风雨扬尘</title>
<link type="text/css" rel="stylesheet" href="static/css/blog.css" />
</head>
<body>
<header class="headbar">
    <a href="/home">首页</a>
    <a href="/study">学习笔记</a>
    <a href="/blog">日志博客</a>
    <a href="#">图片</a>
    <a href="#">视频</a>
</header>
<div class="headContent">
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘1</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div>
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘2</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div>
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div>
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div>
</div><!-- headContent -->

<div class="content">
<form action="/upload2" method="post" enctype="multipart/form-data">
    <label>上传文件</label><input type="file" name="file"><br/>
    <label>上传文件</label><input type="file" name="file"><br/>
    <label>上传文件</label><input type="file" name="file"><br/>
    <label>上传文件</label><input type="file" name="file"><br/>
    <label>上传文件</label><input type="file" name="file"><br/>
    <label>上传文件</label><input type="file" name="file"><br/>
    <input type="submit" id="submit">
</form>
</div><!-- content -->
</body>
</html>