<%-- 
    Document   : Login
    Created on : 13 nov 2023, 19:02:10
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Sistema Farmaceutico</title>
    <link rel="stylesheet" href="Estilos/Estilos.css"/>

    <body class="logbody">
        <form method="POST" action="/Farmacia/ServletPrincipal?accion=Login" id="formLogin" >
            <div id="resultLogin"></div>    
            <div class="sisLog"><h1>Sistema Farmaceutico</h1></div>           
            <%-- Crear objeto de la clase Date y formatear la fecha --%>
            <div class="formulario">
            <c:set  var="fechaActual" value="<%= new java.util.Date() %>" />
            <c:set var="formatoFecha" value="dd/MM/YYYY" />         
            <%-- Imprimir fecha --%>            
            <div class="hora1"><label class="tama"><strong class="hora">
                <c:out value="Fecha actual: "/>
                <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
            </strong></label></div><br>
            <div class="usu1"><label class="usu">Usuario:</label></div>            
            <div class="cajaUsu" ><input type="text" name="tfUsuario" id="idtfUsuario" placeholder="nombre@gmail.com" ></div><br>
            <div class="contra1"><label class="contra">Contrase&ntilde;a:</label></div>
            <div class="cajaContra"><input type="password" name="tfContrasenia" id="idtfContrasenia" placeholder="****" ></div><br>
            <div class="envio1"><input class="envio" type="submit" value="Iniciar Sesi&oacute;n"></div>
            </div>
        </form>    
    </body>
</html>
