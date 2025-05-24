<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${user != null ? "Редактирование пользователя" : "Добавление пользователя"}</title>
</head>
<body>
<h2>${user != null ? "Редактировать пользователя" : "Добавить нового пользователя"}</h2>

<form action="${user != null ? '/edit' : '/add'}" method="post">
    <c:if test="${user != null}">
        <input type="hidden" name="id" value="${user.id}" />
    </c:if>
    Имя: <input type="text" name="name" value="${user != null ? user.name : ''}" required/><br/><br/>
    Email: <input type="email" name="email" value="${user != null ? user.email : ''}" required/><br/><br/>
    <input type="submit" value="Сохранить"/>
</form>

<br/>
<form action="/" method="get">
    <input type="submit" value="Назад к списку"/>
</form>

</body>
</html>