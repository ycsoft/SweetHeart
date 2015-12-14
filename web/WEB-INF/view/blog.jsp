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
    <a href="/blog">日志</a>
    <a href="/blog">备忘</a>
    <a href="/album">图片</a>
    <a href="#">视频</a>
</header>
<div class="headContent">
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/logo.jpg" /></div>
<div class="name">杨小东</div><!--img class="seximg" src="static/pic/sex.png"/-->
<div class="intro">父亲，和蔼可亲</div>
</div>
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/chenlei.png" /></div>
<div class="name">陈磊</div>
<div class="intro">母亲，贤淑睿智</div>
</div>
<div class="contentItem">
<div class="logodiv"><img class="logo" src="static/pic/muyao.png" /></div>
<div class="name">杨慕尧</div>
<div class="intro">女儿，健康可爱</div>
</div>
</div><!-- headContent -->

<div class="content">
<c:forEach var="item" items="${list}">
<div class="listitem">
<img class="tag" src="static/pic/logo.jpg" />
<a class="title" href="/blogview?title=${item.get("title")}">
        ${item.get("title")}
</a><label class="date">${item.get("dtime")}</label>
<div class="addremove">
<a href="/addblog"><img title="添加" style="width:20px; height:20px; margin-left:0px"  src="static/pic/add.png"/></a>
<a href="#"><img title="删除" style="width:20px; height:20px; margin-left:0px"  src="static/pic/remove.png"/></a>
</div>
<div class="imgcontent">
<img src="${item.get("img")}" />
</div>
</div><!--listitem-->
</c:forEach>
</div><!-- content -->
</body>
</html>