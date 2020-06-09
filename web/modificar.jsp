

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body>
        <h1><p style="color:red"><i>NUEVA ENTRADA</i></p></h1>
      
        <form action="MainControlador" method="post">
        <table>
            <input type="hidden" name="id" value="${blog.id}">
            
            <tr>
                <td><i>Fecha:</i></td>
                <td><input type="date" name="isbn" value="${blog.id}"></td>
            </tr>
            <tr>
                <td><i>Titulo:</i></td>
                <td><input type="text" name="titulo" value="${blog.titulo}"></td>
            </tr>
            <tr>
                <td><i>Contenido:</i></td>
                <td>
                <textarea name="categoria" rows="3" cols="50" value="${blog.contenido}">
                </textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="ENVIAR"></td>
            </tr>
        </table>
            </form>
    </body></center>
</html>
