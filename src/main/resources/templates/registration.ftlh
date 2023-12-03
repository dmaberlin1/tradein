<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TRADEIN</title>
</head>
<body>
<h2>TRADEIN</h2>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br>
    Email: <input type="email" name="email"><br>
    Номер телефона: <input type="text" name="phoneNumber"><br>
    Password: <input type="password" name="password"><br>
    <input type="hidden" name="_csrf" value="${_crsf.token}">
    <input type="submit" value="Зарегистрироваться">
</form>
<#if errorMessage??>
    <h2 style="color:rgba(188,54,74,0.84)">${errorMessage}</h2>
</#if>
</body>
</html>