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
<h4>Admin Panel</h4>
<hr>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Ban</th>
        <th>Редактирование</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th>
                <#if user.active>
                    true
                <#else>
                    false
                </#if>
            </th>
            <th>
                <#list user.roles as role>
                    ${role}
                </#list>
            </th>
            <th>
                <form action="/admin/user/ban${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th>
                <a href="/admin/user/edit/${user.id}">Редактирование</a>
            </th>
            <th>
                <a href="/admin/user/${user.id}">Подробная информация</a>
            </th>
        </tr>

    <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>


</body>
</html>