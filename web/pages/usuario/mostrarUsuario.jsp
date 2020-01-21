<%--
    * Autor:  Pedro Eliezer García Ramírez
    * Email: pedro.e.garcia.ramirez@gmail.com
    * Creación: 17/01/2020

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOSTAR  DATOS</title>
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
                    <table class="table table-bordered table-hover table table-condensed">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Contraseña</th>
                                <th>Username</th>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="listaRegistros" var="registro" status="struts">
                                <tr>
                                    <td><s:property value="idusuario"></s:property></td>
                                    <td><s:property value="nombre"></s:property></td>
                                    <td><s:property value="tipo"></s:property></td>
                                    <td><s:property value="contrasena"></s:property></td>
                                    <td><s:property value="usuario"></s:property></td>
                                        <td>
                                        <s:a action="actionActualizarUsuario">
                                            <s:param name="usuario.idusuario" value="idusuario"></s:param>
                                            <s:param name="usuario.nombre" value="nombre"></s:param>
                                            <s:param name="usuario.tipo" value="tipo"></s:param>
                                            <s:param name="usuario.contrasena" value="contrasena"></s:param>
                                            <s:param name="usuario.usuario" value="usuario"></s:param>
                                                <span class="btn btn-info">Editar</span>
                                        </s:a>
                                        <s:a action="actionEliminarUsuario">
                                            <s:param name="usuario.idusuario" value="idusuario"></s:param>
                                                <span class="btn btn-danger">Eliminar</span>
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
