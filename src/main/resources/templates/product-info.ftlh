<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>TRADEIN</h1>
<h4>Подробная информация о товаре</h4>

<#list images as img>
    <img src="/images/${img.id}" height="60px" alt="img">

</#list>

<b>Название товара : </b> ${product.title} <br>
<b>Описание товара: </b>${product.description} <br>
<b>Цена:</b> ${product.price}<br>
<b>Город:</b>${product.city}<br>
<b>Автор:</b>${product.user.name}<br>
<b>Номер телефона:</b>${product.user.phoneNumber}<br>
</body>
</html>