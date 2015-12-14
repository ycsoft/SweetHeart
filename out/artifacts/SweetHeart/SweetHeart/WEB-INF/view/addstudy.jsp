<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>风雨扬尘</title>
<link type="text/css" rel="stylesheet" href="static/css/study.css" />

<script type="text/javascript" src="static/js/jquery.min.js"></script>

<script type="text/javascript" src="static/js/jquery-ui-1.7.2.custom.min.js"></script>
<link rel="Stylesheet" type="text/css" href="static/style/jqueryui/ui-lightness/jquery-ui-1.7.2.custom.css" />
<script type="text/javascript" src="static/js/jHtmlArea-0.8.js"></script>
    <script type="text/javascript" src="static/js/base64.min.js"></script>
<link rel="Stylesheet" type="text/css" href="static/style/jHtmlArea.css" />

</head>
<body>
<script>
$(document).ready(function(e) {
    $('textarea').htmlarea();
	
	$('#submit').click(function(e) {
        var title = $('#stitle').val();
        var html = $('textarea').val();
        var ehtml = Base64.encode(html);

        var reg = new RegExp("\\+","g");
        ehtml = ehtml.replace(reg,"%2B");
        alert(ehtml);
        $('textarea').val(ehtml);
        $('#form').attr('action',"/SweetHeart/savestudy?title="+title+"&data="+ehtml);
    });
});
</script>
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
<hr/>
</div><!-- headContent -->
<div class="newcontent">
<form action="" method="post" name="form" id="form" enctype="text/plain">
<div id="title"><label>标题</label><input type="text" id="stitle"/></div>
<div id="data"><textarea></textarea></div>
<div id="btn"><input type="submit" value="提交" id="submit"/><input type="reset" name="clear" value="清空"/></div>
</form>
</div><!-- content -->
</body>
</html>