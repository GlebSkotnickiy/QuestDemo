<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Начало</title>
</head>
<body>

<%
    int questionNumber = 0;

    if (request.getAttribute("questionNumber") != null) {
        questionNumber = (int) request.getAttribute("questionNumber");
    } else {
        questionNumber = 1;
    }
    if (questionNumber == 1) {
%>

Ты потерял память, принять вызов нло?

<form method='get' action="quest-servlet">
    <button name="option" method="get"> Принять вызов </button>
</form>
<form method='post' action="quest-servlet">
    <button name="option" method="post"> Отклонить вызов </button>
</form>

<% }
else if (questionNumber == 2){%>
Ты принял вызов. Поднимешься на мостик к капитану?
<form method='get' action="quest-servlet">
    <button name="option" method="get"> Да </button>
</form>

<form method='post' action="quest-servlet">
    <button name="option" method="post"> Нет </button>
</form>
<%}  else if (questionNumber == 3){%>
Вопрос 3?
<form method='get' action="quest-servlet">
    <button name="option" method="get"> Да </button>
</form>

<form method='post' action="quest-servlet">
    <button name="option" method="post"> Нет </button>
</form>
<%}%>

</body>
</html>