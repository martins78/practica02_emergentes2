<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listaper");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Tareas</title>
    </head>
    <body>
        <h1>Listado de Tareas</h1>
        <a href="MainController?op=nuevo">Nueva Tarea</a>
        <table border="1">
            <tr>
                <th>id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Producto item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getTarea()%></td>
                <td><%= item.getPrioridad()%></td>
                <td><input type="checkbox" disabled <%=item.getCompletado().equals("Concluido")?"checked" : " "%>></td>
                <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId()%>"
                       onclick="return confirm('esat seguro de eliminar el regsitro ? ');">Eliminar</a></td>
            </tr>
            <% 
                    }
                }
            %>
            
        </table>
    </body>
</html>
