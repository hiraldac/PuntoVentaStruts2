<%-- 
    Document   : mostrarVenta
    Created on : 21/01/2020, 03:43:17 PM
    Author     : labtw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venta</title>
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <script type="text/javascript" src="../../resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../../resources/css/miestilo.css">
    </head>
    <body>
        <div class="page-header">
            <nav class="nav navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="navbar-brand" href="#">Frameworks</a>
                    </li>
                    <li class="nav-item">

                    </li>
                    <li class="nav-item">
                        <s:a href="actionMostrarVentas">
                            <span class="nav-link">Mostrar</span>
                        </s:a>
                    </li>
                    <li class="nav-item">

                    </li>
                </ul>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Código de Venta: &nbsp;<s:property value="venta.idventa"></s:property></h1>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código del Producto</th>
                                <th>Nombre del Producto</th>
                                <th>Cantidad</th>
                                <th>Total</th>
                            </tr> 
                        </thead>
                        <tbody>
                            <s:iterator value="listaDetalle" var="registros" status="struts">
                                <tr>
                                    <td><s:property value="producto.id"></s:property></td>
                                    <td><s:property value="producto.nombre"></s:property></td>
                                    <td><s:property value="cantidad"></s:property></td>
                                    <td><s:property value="cantidad*producto.precio"></s:property></td>
                                </tr>
                            </s:iterator>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3">Total:</td>
                                <td><s:property value="totalventa"></s:property></td>
                            </tr>
                        </tfoot>
                    </table>
                        <s:a href="actionMostrarVentas">
                            <span class="btn btn-success">Regresar</span>
                        </s:a>
                </div>
            </div>
        </div>
    </body>
</html>
