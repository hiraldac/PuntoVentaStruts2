<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREACION DE USUARIOS</title>
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <script type="text/javascript" src="../../resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Usuarios <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="actionCrearUsuario">Crear usuarios</a></li>
                            <li><a href="actionMostarUsuario">Mostrar usuarios</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Provedores <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="actionCrearUsuario">Crear proveedor</a></li>
                            <li><a href="actionMostarUsuario">Mostrar proveedor</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Productos <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="actionCrearUsuario">Crear Producto</a></li>
                            <li><a href="actionMostarUsuario">Mostrar Producto</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Ventas<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="actionMostarUsuario">Mostrar ventas</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Generar reporte<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="actionCrearUsuario">Reporte semanal</a></li>
                            <li><a href="actionMostarUsuario">Reporte mensual</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <s:form action="editar" method="POST">
                                <div class="form-group">
                                    <s:textfield name="usuario.nombre"
                                                 size="200px"
                                                 placeholder="Ingrese su nombre"
                                                 cssClass="form-control">
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="usuario.tipo"
                                                 size="200px"
                                                 placeholder="Ingrese el tipo de usuario"
                                                 cssClass="form-control">
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="usuario.contrasena"
                                                 size="200px"
                                                 type="password"
                                                 placeholder="Ingrese su contraseña"
                                                 cssClass="form-control">
                                    </s:textfield>
                                </div>
                                <div class="form-group">
                                    <s:textfield name="usuario.usuario"
                                                 size="200px"
                                                 placeholder="Ingrese su username"
                                                 cssClass="form-control">
                                    </s:textfield>
                                </div>
                                <s:submit value="Actualizar Registro"
                                          cssClass="btn btn-success btn-block"/>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
