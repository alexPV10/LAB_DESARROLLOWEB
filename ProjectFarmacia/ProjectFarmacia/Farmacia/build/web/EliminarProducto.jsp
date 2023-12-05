<%-- 
    Document   : EliminarProducto
    Created on : 14 nov 2023, 17:43:42
    Author     : Tambo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Producto</title>
    </head>
    <body>
        <h1>Eliminar Producto</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=EliminarProducto">
            <div>
                <label>id: ${param.id}</label><br>
                <label>nombre: ${param.nombre}</label><br>
                <label>descripcion: ${param.descripcion}</label><br>
                <label>precio: ${param.precio}</label><br>
                <label>fechaVencimiento: ${param.fechaVencimiento}</label><br>
                <label>stockActual: ${param.stockActual}</label><br>
                <label>stockMinimo: ${param.stockMinimo}</label><br>
                <label>fechaUltimaCompra: ${param.fechaUltimaCompra}</label><br>
                <label>fechaUltimaVenta: ${param.fechaUltimaVenta}</label><br>
                <label>instrucciones: ${param.instrucciones}</label>
                <label>ID Precentacion: ${param.IdPrecentacion}</label>   
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>