<%-- 
    Document   : mostrarProducto
    Created on : 16/01/2020, 11:57:14 PM
    Author     : Joker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
        <script type="text/javascript" href="./resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" href="./resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <nav class="nav navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="navbar-brand" href="#">Frameworks</a>
                    </li>
                    <li class="nav-item">
                    <s:a href="actionCrearFramework">
                        <span class="nav-link">Crear</span>
                    </s:a>
                    </li>
                    <li class="nav-item">
                    <s:a href="actionMostrarFramework">
                        <span class="nav-link">Mostrar</span>
                    </s:a>
                    </li>
                    <li class="nav-item">
                    <s:a href="actionAyudaFramework">
                        <span class="nav-link">Ayuda</span>
                    </s:a>
                    </li>
                </ul>
            </nav>
        </div>


        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Fecha</th>
                                <th>Total</th>
                            </tr> 
                        </thead>
                        
                        <tbody>
                            <s:iterator value="listaRegistros" var="registros" status="venta">
                                <tr>
                                    <td> <s:property value="idventa"></s:property> </td>
                                    <td> <s:property value="fecha"></s:property> </td>
                                    <td> <s:property value="total"></s:property> </td>
                                    <td>
                                    <s:a action="actionDeleteVenta">
                                        <s:param name="venta.idventa" value="idventa"></s:param>
                                        <span class="btn bg-danger">Eliminar</span>
                                    </s:a>
                                    <s:a action="actionMostrarVenta">
                                        <s:param name="venta.idventa" value="idventa"></s:param>
                                        <span class="btn">Mostrar</span>
                                    </s:a>
                                    </td>
                                </tr>
                            </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>