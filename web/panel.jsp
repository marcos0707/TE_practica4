<%@page import="com.emergentes.modelo.Blog"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
if (session.getAttribute("logueado")!= "ok") {
        response.sendRedirect("login.jsp");
    }
%>

<%
List<Blog> lista = (List<Blog>) request.getAttribute("lista");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<a href="LoginControlador?action=logout"> <p align="right" >Salir al login </p> </a>
    <center><body>

            <h1><p style="color:blue">WEB-SALUD</p></h1>
        <a href="MainControlador?op=nuevo">NUEVA ENTRADA</a>
        <c:forEach var="item" items="${lista}">
            <p>${item.fecha}</p>
            <b><p>${item.titulo}</p></b>
            <p>${item.contenido}</p>
           
            <h4 align = "right">  
                <a href="MainControlador?op=eliminar&id=${item.id}">Eliminar</a>
                <a href="MainControlador?op=editar&id=${item.id}" onclick="return(confirm('esta seguro?'))">Editar</a></h4>
            </p>
            <hr>
        </c:forEach>
    </center>
    </body>
</html>

</html>
