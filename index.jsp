<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Vector" %>

<%
    Vector datos = (Vector) request.getAttribute("listaDatos");
%>

<html>
<form action="servlet" method="post">
    <input type="submit" value="Cargar frutas">
</form>
<head>
    <meta charset="UTF-8">
    <title>Prueba JSP</title>

    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
</head>
<body>
<h2>Lista dinámica</h2>

<select onchange="cambiarColor(this)">
<%
    if (datos != null) {
        for(Object item : datos){
%>
    <option><%= item %></option>
<%
        }
    }
%>
</select>
</body>
</html>