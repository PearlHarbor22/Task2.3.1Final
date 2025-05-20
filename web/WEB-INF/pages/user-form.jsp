<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>${user.id == null ? "Создание" : "Редактирование"} пользователя</title>
</head>
<body>
<h2>${user.id == null ? "Создание" : "Редактирование"} пользователя</h2>

<form:form action="${user.id == null ? '/create' : '/update'}" method="post" modelAttribute="user">
    <form:hidden path="id"/>

    <label>Имя:</label><br/>
    <form:input path="name"/><br/><br/>

    <label>Email:</label><br/>
    <form:input path="email"/><br/><br/>

    <input type="submit" value="Сохранить"/>
</form:form>

<br/>
<a href="/">Назад к списку</a>
</body>
</html>
