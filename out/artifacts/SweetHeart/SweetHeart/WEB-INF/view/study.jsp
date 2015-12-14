<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>风雨扬尘</title>
<link type="text/css" rel="stylesheet" href="static/css/study.css" />
</head>
<body>
<header class="headbar">
    <a href="/SweetHeart/">首页</a>
    <a href="/SweetHeart/study">学习笔记</a>
    <a href="/SweetHeart/blog">日志博客</a>
    <a href="#">图片</a>
    <a href="#">视频</a>
</header>
<div class="headContent">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">风雨扬尘</div><img class="seximg" src="static/pic/sex.png"/>
<div class="intro">西北工业大学博士，热爱技术研发</div>
</div><!-- headContent -->
<div class="content">
<c:forEach var="item" items="${list}">

<div class="listitem"><img class="tag" src="static/pic/logo.jpg" />
<a class="title" href="/SweetHeart/viewstudy?title=${item.get("title")}">
${item.get("title")}
</a><label class="date">${item.get("dtime")}</label>
<div class="addremove">
<a href="/SweetHeart/addStudy"><img title="添加" style="width:25px; height:25px; margin-left:0px"  src="static/pic/add.png"/></a>
<a href="/SweetHeart/removeStudy?title=${item.get('title')}"><img title="删除" style="width:25px; height:25px; margin-left:0px"  src="static/pic/remove.png"/></a>
</div>
</div><!--listitem-->

</c:forEach>
</div><!-- content -->
</body>
</html>