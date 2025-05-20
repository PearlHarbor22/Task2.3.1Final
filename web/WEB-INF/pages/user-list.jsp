<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Список пользователей</title>
</head>
<body>
<h2>Пользователи</h2>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Имя</th>
        <th>Email</th>
        <th>Действия</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>
                <form action="/edit" method="get" style="display:inline;">
                    <input type="hidden" name="id" value="${user.id}" />
                    <input type="submit" value="Редактировать" />
                </form>

                <form action="/delete" method="post" style="display:inline;" onsubmit="return confirm('Вы уверены, что хотите удалить пользователя?');">
                    <input type="hidden" name="id" value="${user.id}" />
                    <input type="submit" value="Удалить" />
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>
<form action="/new" method="get">
    <input type="submit" value="Добавить нового пользователя"/>
</form>

</body>
</html>
