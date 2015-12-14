<%--
  Created by IntelliJ IDEA.
  User: Seven Yang
  Date: 2015/12/2
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.md5.js"></script>
</head>
<style>
    html,body{
        width:100%;
        height:100%;background-color: cadetblue;
    }
    div#auth{
        position:absolute; width: 50%; height: 60%;
        left:25%; top: 30%; background-color: cadetblue;
    }
    .row{
        position:relative; width: 100%; height: 40px; margin-top: 10px;text-align: center;;
    }
    label{margin-right: 5px;}
</style>
<body>
<script>
    $(document).ready(function(e){
        alert("new");
        $('#submit').click(function(e){

            var usr = $('#name').val();
            var pwd = $('#pwd').val();
            pwd = $.md5(pwd);
            alert(usr + ":" + pwd);
            location.href = "/save?name="+usr +"&pwd="+pwd;
        });
});

</script>
<div id="auth">
    <div class="row"><label>账号</label><input type="text" id="name" name="name"></div>
    <div class="row"><label>密码</label><input type="password" id="pwd" name="pwd"></div>
    <div class="row"><input type="submit" value="登录" id="submit"><input type="reset" value="重置" id="reset"></div>
</div>
</body>
</html>
