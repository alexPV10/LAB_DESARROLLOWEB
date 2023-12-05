<%-- 
    Document   : ModificarProducto
    Created on : 14 nov 2023, 17:43:59
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Producto</title>
    </head>
    <body>
        <h1>Modificar Producto</h1>
        <form action="/Farmacia/ServletPrincipal?accion=ModificarProducto" method="POST">
            <div>
                <label>id:</label>
                <input type="text" name="id" id="id" value="${param.id}" readonly /><br>
                <label>nombre:</label>
                <input type="text" name="nombre" id="nombres" value="${param.nombre}" required /><br>
                <label>descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br>
                <label>precio:</label>
                <input type="text" name="precio" id="precio" value="${param.precio}" required /><br>
                <label>fechaVencimiento:</label>
                <input type="text" name="fechaVencimiento" id="fechaVencimiento" value="${param.fechaVencimiento}" required /><br>
                <label>stockActual:</label>
                <input type="date" name="stockActual" id="stockActual" value="${param.stockActual}" required /><br>
                <label>stockMinimo:</label>
                <input type="text" name="stockMinimo" id="stockMinimo" value="${param.stockMinimo}" required /><br>
                <label>fechaUltimaCompra:</label>
                <input type="email" name="fechaUltimaCompra" id="fechaUltimaCompra" value="${param.fechaUltimaCompra}" required /><br>
                <label>fechaUltimaVenta:</label>
                <input type="text" name="fechaUltimaVenta" id="fechaUltimaVenta" value="${param.fechaUltimaVenta}" required /><br>
                <label>instrucciones:</label>
                <input type="text" name="instrucciones" id="instrucciones" value="${param.instrucciones}" required /><br>
                <label>IdPrecentacion:</label>
                <input type="text" name="IdPrecentacion" id="IdPrecentacion" value="${param.IdPrecentacion}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Farmacia/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
