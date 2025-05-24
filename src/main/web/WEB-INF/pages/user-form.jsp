<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление пользователя</title>
</head>
<body>
<h2>Добавить нового пользователя</h2>

<form action="/users/new" method="post">
    Имя: <input type="text" name="name" required/><br/><br/>
    Email: <input type="email" name="email" required/><br/><br/>
    <input type="submit" value="Сохранить"/>
</form>

<br/>
<form action="/users" method="get">
    <input type="submit" value="Назад к списку"/>
</form>

</body>
</html>