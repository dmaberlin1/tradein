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
<h4>Авторизация</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br>
    Password: <input type="password" name="password"><br>
    <input type="hidden" name="_csrf" value="${_crsf.token}">
    <input type="submit" value="Вход">
</form>
<a href="/registration">Зарегистрироваться</a>
</body>
</html>