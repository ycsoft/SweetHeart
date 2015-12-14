
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>因为你，一切都变得那么美好</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
	<script type="text/javascript" src="static/js/jquery.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.md5.js"></script>
<meta name="keywords" content="Blog Login Form Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="static/css/style-login.css" rel='stylesheet' type='text/css' />
<script type="text/javascript">

	$(document).ready(function(e){

		$("#continue").click(function(e){
			var uname = $("#name").val();
			var upwd = $("#pwd").val();
			upwd = $.md5(upwd);
			location.href = "/SweetHeart/auth?name="+uname + "&pwd="+upwd;
		});

	});
</script>
</head>
<body>
<!--start-main-->
<h1>美好时光</h1>
<div class="login-box">
	<div class="camera"> </div>
	<h2>七公主</h2>

		<input type="text" id="name" class="text" value="USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
		<input type="password" id="pwd" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		<div class="btn"><input type="submit" id="continue" value="Continue"></div>

		<div class="remember"><p>Not a Member?</p>
		<h4><a href="#">Sign up now<img src="images/arrow.png" /></a></h4>
	</div>
</div>
<!--//End-login-form-->
<!--start-copyright-->
<div class="copy-right">
	<p>Template by <a href="http://w3layouts.com">w3layouts</a></p> 
</div>
<!--//end-copyright-->		
</body>
</html>