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
<a>首页</a>
<a>学习笔记</a>
<a>日志博客</a>
<a>图片</a>
<a>视频</a>
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
<form action="/upload" method="post" enctype="multipart/form-data">
    <input type="file" name="file"><input type="submit" value="提交">
</form>
</div><!-- content -->
</body>
</html>