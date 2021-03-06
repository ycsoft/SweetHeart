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
<c:forEach var="item" items="${list}">
<div class="listitem">
<img class="tag" src="static/pic/logo.jpg" />
<a class="title" href="/SweetHeart/blogview?title=${item.get("title")}">
        ${item.get("title")}
</a><label class="date">${item.get("dtime")}</label>
<div class="addremove">
<a href="/SweetHeart/addblog"><img title="添加" style="width:20px; height:20px; margin-left:0px"  src="static/pic/add.png"/></a>
<a href="#"><img title="删除" style="width:20px; height:20px; margin-left:0px"  src="static/pic/remove.png"/></a>
</div>
<div class="imgcontent">
<img src="static/pic/2.jpg">
</div>
</div><!--listitem-->
</c:forEach>
</div><!-- content -->
</body>
</html>