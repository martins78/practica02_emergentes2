<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto)request.getAttribute("miPersona");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId()== 0) ? "Nuevo Registro":"editar registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId()%>"/>
            <table>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea"value="<%= item.getTarea()%>"/> </td>
                </tr>
                <tr>
                    <td>Prioridad</td>
                    <td>
                        <select name="prioridad" value="<%= item.getPrioridad()%>">
                            <option value="alto">Alto</option>
                            <option value="medio">Media</option>
                            <option value="bajo">Baja</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Completado</td>
                    <td>
                        <select name="completado" value="<%= item.getCompletado()%>">
                            <option value="Concluido">concluido</option>
                            <option value="Pendiente">pendiente</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"value="Enviar"/> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
