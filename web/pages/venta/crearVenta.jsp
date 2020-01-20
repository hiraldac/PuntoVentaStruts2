<%-- 
    Document   : crearProducto
    Created on : 17/01/2020, 12:06:15 AM
    Author     : Joker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venta</title>
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
        <script type="text/javascript" href="./resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" href="./resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <nav class="nav navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="navbar-brand" href="#">Productos</a>
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
                    <div class="card">
                        <div class="card-body">
                            <s:form action="actionInsertProducto" method="POST">
                                <div class="form-group">
                                    <s:textfield name="producto.nombre"
                                                 size="200px"
                                                 placeholder="Ingrese el nombre del Producto"
                                                 cssClass="form-control">    
                                    </s:textfield>
                                </div>    
                                <div class="form-group">
                                    <s:textfield name="producto.marca"
                                                 size="200px"
                                                 placeholder="Ingrese la marca del producto"
                                                 cssClass="form-control">    
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="producto.descripcion"
                                                 size="200px"
                                                 placeholder="Descripción del producto"
                                                 cssClass="form-control">    
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="producto.precio"
                                                 size="200px"
                                                 placeholder="Ingrese el precio del producto"
                                                 cssClass="form-control">    
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="producto.existencia"
                                                 size="200px"
                                                 placeholder="Ingrese el numero de productos existentes"
                                                 cssClass="form-control">    
                                    </s:textfield>
                                </div>
                                <s:submit value="Crear Registro"
                                              cssClass="btn btn-success btn-block"/>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>