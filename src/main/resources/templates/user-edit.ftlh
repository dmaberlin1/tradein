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
<h3>Редактирование пользователя ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label for="${role}">
                <input type="checkbox" name="${role} ${user.roles?seq_contains(role)?string("checked", "")}">
                ${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_crsf.token}" name="_crsf">
    <button type="submit">Save</button>
</form>
</body>
</html>