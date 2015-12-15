
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>备忘录</title>
	<style>
		html,body{ width: 100%; height: 100%; margin: 0px;
			text-align: center; background-image:url(static/images/bg2.jpg);}
		.containt{ width: 70%; height: 82%; background-color:cornflowerblue; position:absolute;
			left:15%; top: 5%; border-radius: 10px; background-image:url(static/images/bg3.JPG);
			padding: 20px 20px 20px 20px; overflow-x:hidden; overflow-y:scroll;}

		.containt .panel{ width:70%; height:50%; position:absolute; left:15%; top:25%;}

		label{ display:inline-block; font-family:Georgia, "Times New Roman", Times, serif; font-size:10px; font-weight:bolder; color:#333;
			position:absolute; left:50px}

		input[type="text"]{width:100%; display:inline-block}
		input[type="submit"]{width:200px; display:inline-block; margin-top:20px}
		textarea{ width:100%; height:300px; margin-top:20px; margin-left:200px;}

	</style>

	<script type="text/javascript" src="static/js/jquery.min.js"></script>
	<script type="text/javascript" src="static/js/jquery-ui-1.7.2.custom.min.js"></script>
	<script type="text/javascript" src="static/js/jHtmlArea-0.8.js"></script>
	<script type="text/javascript" src="static/js/base64.min.js"></script>

	<link rel="Stylesheet" type="text/css" href="static/style/jqueryui/ui-lightness/jquery-ui-1.7.2.custom.css" />
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
			$('textarea').val(ehtml);
			var url = "/addremark?title="+title+"&txt="+ehtml;;
			$('#form').attr('action',url);
		});


	});
</script>

<form method="post" action="" enctype="text/plain">
	<div class="containt">
		<div class="panel">
			<div>
				<input type="text" name="title" id="stitle">
			</div>
			<br>
			<textarea name="txt"></textarea><br>
			<input type="submit" id="submit" value="保存">
		</div>
	</div><!--div class="containt"-->
</form>
</body>
</html>