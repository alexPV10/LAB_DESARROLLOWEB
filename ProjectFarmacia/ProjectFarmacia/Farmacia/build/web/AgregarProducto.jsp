<%-- 
    Document   : AgregarProducto
    Created on : 14 nov 2023, 17:43:23
    Author     : Tambo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
    </head>
    <body>
         <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar Producto</h1>

        <form method="POST" action="/Farmacia/ServletPrincipal?accion=AgregarProducto">
            <div>
                <!-- El ID de los cargos es autoincrementable -->
                <label>nombre: </label>
                <input type="text" name="nombre" id="nombre" required /><br><br> 
                <label>descripcion: </label>
                <input type="text" name="descripcion" id="descripcion" required /><br><br> 
                <label>precio: </label>
                <input type="text" name="precio" id="precio" required /><br><br> 
                <label>fechaVencimiento: </label>
                <input type="text" name="fechaVencimiento" id="fechaVencimiento" required /><br><br> 
                <label>stockActual: </label>
                <input type="text" name="stockActual" id="stockActual" required /><br><br> 
                <label>stockMinimo: </label>
                <input type="text" name="stockMinimo" id="stockMinimo" required /><br><br> 
                <label>fechaUltimaCompra: </label>
                <input type="text" name="fechaUltimaCompra" id="fechaUltimaCompra" required /><br><br> 
                <label>fechaUltimaVenta: </label>
                <input type="text" name="fechaUltimaVenta" id="fechaUltimaVenta" required /><br><br> 
                <label>instrucciones: </label>
                <input type="text" name="instrucciones" id="instrucciones" required /><br><br> 
                <label>idPrecentacion: </label>
                <input type="text" name="idPrecentacion" id="idPrecentacion" required /><br><br>    
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cargo?')" /><br><br>
            </div><br>
            <div>
                <a href="/Farmacia/?accion=GestionarProductos">Regresar</a>
            </div>            
        </form>
    </body>
</html>
