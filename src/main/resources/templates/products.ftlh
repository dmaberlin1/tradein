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
<h1>TRADEIN</h1>
<h4>Товары со всей Украины</h4>
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
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    Название обьявления: <input type="text" name="title"><br>
    Описание обьявления: <input type="text" name="description"><br>
    Цена: <input type="number" name="price"><br>
    Город: <input type="text" name="city"><br>
    Имя: <input type="text" name="author"><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>