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
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <script type="text/javascript" href="../../resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" href="../../resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <nav class="nav navbar-expand-sm bg-dark navbar-dark">
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
                </ul>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form method="post" action="actionAgregarCarrito">
			<label for="codigo">Código de barras:</label>
			<input autofocus class="form-control" name="idproducto" required type="text" id="idproducto" placeholder="Escribe el código">
                        <label for="cantidad">Cantidad</label>
			<input class="form-control" name="cantidad" required type="text" id="cantidad" placeholder="Escribe la cantidad">
                        <button type="submit" class="btn btn-success">Agregar</button>
                        <p:ajax event="change" 
                        listener="#{}"
                         update="tablaVenta"/>
                    </form>
		<br><br>
                <table class="table table-bordered" id="tablaVenta">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                            <th>Quitar</th>
			</tr>
                    </thead>
                    <tbody>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tbody>
		</table>

		<form action="./terminarVenta.php" method="POST">
			<input name="total" type="hidden" value="">
			<button type="submit" class="btn btn-success">Terminar venta</button>
		</form>
                </div>
            </div>
        </div>
    </body>
</html>