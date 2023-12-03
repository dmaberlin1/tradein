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
<h1>TRADEIN </h1>
<hr>

<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_crsf" value="${_csrf.token}">
        <input type="submit" value="Выйти">
    </form>

    <#if user.isAdmin()>
        <a href="/admin">Admin Panel</a>
    </#if>
<#else>
    <a href="/login">Войти</a>
</#if>
<hr>
<h4>Товары со всей Украины</h4>
<form action="" method="get">
    <label for="title" content="Поиск по названию обьявления:">
        <input type="text" name="title">
    </label>
    <input type="submit" value="Поиск">
</form>

<#list products as product>
    <div>
        <p>
            <b>${product.title}</b>
            ${product.price} грн.
            |
            <a href="/product/${product.id}">Подробнее..</a>
        </p>
    </div>
</#list>

<#if user.email??>

    <hr>
    <h3>Создать новый товар</h3>
<#--enctype-multipart/form-data  - формочка помимо полей может передать файловый тип-->
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название обьявления: <input type="text" name="title"><br>
        Описание обьявления: <input type="text" name="description"><br>
        Цена: <input type="number" name="price"><br>
        Город: <input type="text" name="city"><br>
        Первое фото: <input type="file" name="author"><br>
        Второе фото: <input type="file" name="author"><br>
        Третье фото: <input type="file" name="author"><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>