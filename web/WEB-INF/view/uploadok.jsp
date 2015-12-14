<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>文件上传成功</title>
    <style>
        table{ border: dashed;}
        td.img{ width: 200px; height: 200px; text-align: center}
        td img{ width: 190px; height: 190px;}
        td.url{ width: 400px; text-align: center}
    </style>
</head>
<body>
<div align="center">
    <table border="1">
        <tr><td align="center">图片</td><td align="center">地址</td></tr>
        <c:forEach var="item" items="${list}">
        <tr><td class="img"><img src="${item}"></td><td class="url">${item}</td></tr>
        </c:forEach>

    </table>

</div>
</body>
</html>