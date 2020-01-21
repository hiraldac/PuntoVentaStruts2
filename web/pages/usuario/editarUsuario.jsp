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
                    <li class="nav-item active">
                        <s:a class="navbar-brand" href="#">Usuarios</s:a>
                        </li>
                        <li class="nav-item active">
                        <s:a href="actionCrearUsuario">
                            <span class="nav-link">Crear</span>
                        </s:a>
                    </li>
                    <li class="nav-item active">
                        <s:a href="actionMostarUsuario">
                            <span class="nav-link">Mostrar</span>
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
