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
<b>Название товара : </b> ${product.title} <br>
<b>Описание товара: </b>${product.description} <br>
<b>Цена:</b> ${product.price}
<b>Город:</b>${product.city}
<b>Автор:</b>${product.author}


<form action="/product/delete/${product.id}" method="post">

    <input type="submit" value="Удалить товар"/>
</form>

</body>
</html>