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
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона :</b>${user.phoneNumber}<br>
<b>Email:</b>${user.email}<br>


<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b>
            ${product.price} грн.
            |
            <a href="/product/${product.id}">Подробнее..</a>
        </p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>

<#if errorMessage??>
    <h2 style="color: rgba(220,20,60,0.7)">
        ${errorMessage}
    </h2>
</#if>

</body>
</html>