<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREACION DE USUARIOS</title>
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../resources/css/miestilo.css">
        <script type="text/javascript" src="../../resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                    <li class="nav-item">                        
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Menu
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <s:a class="dropdown-item" href="#">Usuarios</s:a>
                                <s:a class="dropdown-item" href="#">Productos</s:a>
                                <s:a class="dropdown-item" href="#">Ventas</s:a>
                                <s:a class="dropdown-item" href="#">Provedores</s:a>
                            </div>
                        </div>
                   </li>
                   <li class="nav-item active">
                        <s:a href="actionCrearUsuario">
                            <span class="nav-link">Crear</span>
                        </s:a>
                    </li>
                    <li class="nav-item">
                        <s:a href="actionMostarUsuario">
                            <span class="nav-link">Mostrar</span>
                        </s:a>
                    </li>

                </ul>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <img src="../../resources/images/usuario.jpg">
                </div>
                <div class="col-sm-6">
                    <div class="card card-block">
                        <div class="card-body">
                            <s:form action="actionInsertUsuario" method="POST">
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
