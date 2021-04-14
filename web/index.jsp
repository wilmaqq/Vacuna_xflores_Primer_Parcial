<%-- 
    Document   : index
    Created on : 13-04-2021, 06:37:50 PM
    Author     : YURIKIRA105
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Vacuna" %>
<%@page import="com.emergentes.modelo.GestorVacunas" %>
<% 
   if (session.getAttribute("agenda") == null){
       GestorVacunas objeto1 = new GestorVacunas();
       
       
       objeto1.insertarVacuna(new Vacuna(1, "Brunito Diaz", "25","1.40","Si"));
       objeto1.insertarVacuna(new Vacuna(2, "Juancito Pinto", "30","1.55","No"));
       
       
       session.setAttribute("agenda", objeto1);
   }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Vacunas zflores</title>
    </head>
    <body>
    <div class="row d-flex justify-content-center">
        <div class="col-4">
            <table algin="center" border="5">
        
            <tr>
                <th>
                    <h4>PRIMER PARCIAL TEM-742</h4>
                    <H5>Nombre: Wilma Quispe Quispe</H5>
                    <H5>Carnet: 9945314 LP.</H5>
                </th>
            </tr>
        </table>
       </div>
    </div>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-6">    
        <h1>Registro de Vacunas</h1>
        <a href="Controller?op=nuevo">Nuevo </a>
        
        <table class="table" border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre}</td>
                <td>${item.peso}</td>
                <td>${item.talla}</td>
                <td>${item.vacuna}</td>
                <td><a href="Controller?op=editar&id=${item.id}">Editar</a></td>
                <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
        </div>
        </div>
    </div>
    </body>
</html>
