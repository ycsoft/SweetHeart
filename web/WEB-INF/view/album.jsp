<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/13
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>杨慕尧家的相册</title>
    <meta charset="UTF-8" />
    <meta name="description" content="Image Wall with jQuery and CSS3" />
    <meta name="keywords" content="jquery, css3, images, wall, thumbnails, slide, animate"/>
    <meta name="author" content="Codrops" />
    <link rel="stylesheet" type="text/css" href="static/css/style-album.css" />
</head>
<body>
<div class="content">
    <header>
        <h1>Time Market</h1>
        <span>杨陈一家</span>
    </header>
    <div class="iw_wrapper">
        <ul class="iw_thumbs" id="iw_thumbs">
            <li><img src="static/images/thumbs/01.JPG" data-img="static/images/full/01.JPG"/><div><h2>精彩瞬间</h2><p>在西安，母女俩的靓丽合影</p></div></li>
            <li><img src="static/images/thumbs/02.JPG" data-img="static/images/full/02.JPG"/><div><h2>精彩瞬间</h2><p>熟睡的你是世上最美的天使，天哪，再没有比你更美丽的女孩了</p></div></li>
            <li><img src="static/images/thumbs/03.JPG" data-img="static/images/full/03.jpg"/><div><h2>精彩瞬间</h2><p>迎接白天，可爱的小萌娃</p></div></li>
            <li><img src="static/images/thumbs/04.JPG" data-img="static/images/full/04.jpg"/><div><h2>精彩瞬间</h2><p>妈妈给你买的小海马你喜欢吗</p></div></li>
            <li><img src="static/images/thumbs/05.JPG" data-img="static/images/full/05.jpg"/><div><h2>精彩瞬间</h2><p>妈妈说看着你，心都要融化了，戳中了我内心的感受</p></div></li>
            <li><img src="static/images/thumbs/06.JPG" data-img="static/images/full/06.JPG"/><div><h2>精彩瞬间</h2><p>你比爸爸妈妈小时候都好看，你是我和妈妈最伟大的作品</p></div></li>
            <li><img src="static/images/thumbs/07.JPG" data-img="static/images/full/07.jpg"/><div><h2>精彩瞬间</h2><p>爸爸妈妈年轻的时候也是很靓丽的，哈哈</p></div></li>
            <li><img src="static/images/thumbs/08.JPG" data-img="static/images/full/08.jpg"/><div><h2>精彩瞬间</h2><p>爸爸妈妈的结婚照</p></div></li>
            <li><img src="static/images/thumbs/09.JPG" data-img="static/images/full/09.jpg"/><div><h2>精彩瞬间</h2><p>热恋期登龙脊山</p></div></li>
            <li><img src="static/images/thumbs/10.jpg" data-img="static/images/full/10.jpg"/><div><h2>精彩瞬间</h2><p>北京，圆明园</p></div></li>
            <li><img src="static/images/thumbs/11.JPG" data-img="static/images/full/11.jpg"/><div><h2>精彩瞬间</h2><p>昆山实习</p></div></li>
            <li><img src="static/images/thumbs/12.JPG" data-img="static/images/full/12.jpg"/><div><h2>精彩瞬间</h2><p>班级合照</p></div></li>
            <li><img src="static/images/thumbs/13.JPG" data-img="static/images/full/13.jpg"/><div><h2>精彩瞬间</h2><p>2010年上海世博会</p></div></li>
            <li><img src="static/images/thumbs/14.JPG" data-img="static/images/full/14.jpg"/><div><h2>精彩瞬间</h2><p>大学宿舍的美女们</p></div></li>
<li><img src="static/images/thumbs/15.jpg"		 data-img="static/images/full/15.jpg"		/><div><h2>精彩瞬间</h2><p></p></div></li>
<li><img src="static/images/thumbs/16.jpg"		 data-img="static/images/full/16.jpg"		/><div><h2>精彩瞬间</h3><p></p></div></li>
<li><img src="static/images/thumbs/17.jpg"		 data-img="static/images/full/17.jpg"		/><div><h2>精彩瞬间</h4><p></p></div></li>
<li><img src="static/images/thumbs/18.jpg"		 data-img="static/images/full/18.jpg"		/><div><h2>精彩瞬间</h5><p></p></div></li>
<li><img src="static/images/thumbs/19.jpg"		 data-img="static/images/full/19.jpg"		/><div><h2>精彩瞬间</h6><p></p></div></li>
<li><img src="static/images/thumbs/20.jpg"		 data-img="static/images/full/20.jpg"		/><div><h2>精彩瞬间</h7><p></p></div></li>
<li><img src="static/images/thumbs/21.jpg"		 data-img="static/images/full/21.jpg"		/><div><h2>精彩瞬间</h8><p></p></div></li>
<li><img src="static/images/thumbs/22.jpg"		 data-img="static/images/full/22.jpg"		/><div><h2>精彩瞬间</h9><p></p></div></li>
<li><img src="static/images/thumbs/23.jpg"		 data-img="static/images/full/23.jpg"		/><div><h2>精彩瞬间</h10><p></p></div></li>
<li><img src="static/images/thumbs/24.jpg"		 data-img="static/images/full/24.jpg"		/><div><h2>精彩瞬间</h11><p></p></div></li>
<li><img src="static/images/thumbs/25.jpg"		 data-img="static/images/full/25.jpg"		/><div><h2>精彩瞬间</h12><p></p></div></li>
<li><img src="static/images/thumbs/26.jpg"		 data-img="static/images/full/26.jpg"		/><div><h2>精彩瞬间</h13><p></p></div></li>
<li><img src="static/images/thumbs/27.jpg"		 data-img="static/images/full/27.jpg"		/><div><h2>精彩瞬间</h14><p></p></div></li>
<li><img src="static/images/thumbs/28.jpg"		 data-img="static/images/full/28.jpg"		/><div><h2>精彩瞬间</h15><p></p></div></li>
<li><img src="static/images/thumbs/29.jpg"		 data-img="static/images/full/29.jpg"		/><div><h2>精彩瞬间</h16><p></p></div></li>
<li><img src="static/images/thumbs/30.jpg"		 data-img="static/images/full/30.jpg"		/><div><h2>精彩瞬间</h17><p></p></div></li>
<li><img src="static/images/thumbs/31.jpg"		 data-img="static/images/full/31.jpg"		/><div><h2>精彩瞬间</h18><p></p></div></li>
<li><img src="static/images/thumbs/32.jpg"		 data-img="static/images/full/32.jpg"		/><div><h2>精彩瞬间</h19><p></p></div></li>
<li><img src="static/images/thumbs/33.jpg"		 data-img="static/images/full/33.jpg"		/><div><h2>精彩瞬间</h20><p></p></div></li>
<li><img src="static/images/thumbs/34.jpg"		 data-img="static/images/full/34.jpg"		/><div><h2>精彩瞬间</h21><p></p></div></li>
<li><img src="static/images/thumbs/35.jpg"		 data-img="static/images/full/35.jpg"		/><div><h2>精彩瞬间</h22><p></p></div></li>
<li><img src="static/images/thumbs/36.jpg"		 data-img="static/images/full/36.jpg"		/><div><h2>精彩瞬间</h23><p></p></div></li>
<li><img src="static/images/thumbs/37.jpg"		 data-img="static/images/full/37.jpg"		/><div><h2>精彩瞬间</h24><p></p></div></li>
<li><img src="static/images/thumbs/38.jpg"		 data-img="static/images/full/38.jpg"		/><div><h2>精彩瞬间</h25><p></p></div></li>
<li><img src="static/images/thumbs/39.jpg"		 data-img="static/images/full/39.jpg"		/><div><h2>精彩瞬间</h26><p></p></div></li>
<li><img src="static/images/thumbs/40.jpg"		 data-img="static/images/full/40.jpg"		/><div><h2>精彩瞬间</h27><p></p></div></li>
<li><img src="static/images/thumbs/41.jpg"		 data-img="static/images/full/41.jpg"		/><div><h2>精彩瞬间</h28><p></p></div></li>
<li><img src="static/images/thumbs/42.jpg"		 data-img="static/images/full/42.jpg"		/><div><h2>精彩瞬间</h29><p></p></div></li>
<li><img src="static/images/thumbs/43.jpg"		 data-img="static/images/full/43.jpg"		/><div><h2>精彩瞬间</h30><p></p></div></li>
<li><img src="static/images/thumbs/44.jpg"		 data-img="static/images/full/44.jpg"		/><div><h2>精彩瞬间</h31><p></p></div></li>
<li><img src="static/images/thumbs/45.jpg"		 data-img="static/images/full/45.jpg"		/><div><h2>精彩瞬间</h32><p></p></div></li>
<li><img src="static/images/thumbs/46.jpg"		 data-img="static/images/full/46.jpg"		/><div><h2>精彩瞬间</h33><p></p></div></li>

        </ul>
    </div>
    <div id="iw_ribbon" class="iw_ribbon">
        <span class="iw_close"></span>
        <span class="iw_zoom">单击缩略图查看全图</span>
    </div>
</div>
<div class="footer">
</div>
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="static/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="static/js/album.js"></script>
<script type="text/javascript">
    $(window).load(function(){
        ImageWall.init();
    });
</script>
</body>
</html>