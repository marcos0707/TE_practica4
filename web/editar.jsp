
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Blog blog = (Blog) request.getAttribute("blog");
%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${blog.id == 0}">Nueva Entrada/</c:if>
            <c:if test="${blog.id != 0}">Editar Entrada</c:if>
        </h1>
            <form action="MainControlador" method="post">
            <table>
                <input type="hidden" name="id" value="${blog.id}">
                <tr>
                    <td>FECHA: </td>
                    <td><input type="text" name="fecha" value="${blog.fecha}"></td>
                </tr>
                <tr>
                    <td>TITULO: </td>
                    <td><input type="text" name="titulo" value="${blog.titulo}"></td>
                </tr>
                <tr>
                    <td>CCONTENIDO: </td>
                    <td><textarea name="contenido" rows="8" cols="40" placeholder="${blog.contenido}"></textarea></td>
                </tr>
                
                  
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>            
        </form>
    </body>
</html>