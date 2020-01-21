<%--
    * Autor:  Pedro Eliezer García Ramírez
    * Email: pedro.e.garcia.ramirez@gmail.com
    * Creación: 17/01/2020

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <script type="text/javascript" src="../../resources/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../../resources/css/miestilo.css">
    </head>
    <body>
        <div class="container mt-5 pt-5">
            <div class="card mx-auto border-0">
                <div class="card-header border-bottom-0 bg-transparent">
                    <ul class="nav nav-tabs justify-content-center pt-4" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active text-primary" id="pills-login-tab" data-toggle="pill" href="#pills-login" role="tab" aria-controls="pills-login"
                               aria-selected="true">Iniciar Sesión</a>
                        </li>
                    </ul>
                </div>

                <div class="card-body pb-4">
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
                            <form action="actionlogueo" method="POST">
                                <div class="form-group">
                                    <input type="text" name="username" class="form-control" id="email" placeholder="usuario" required autofocus>
                                </div>

                                <div class="form-group">
                                    <input type="password" name="password" class="form-control" id="password" id="password" placeholder="Password" required>
                                </div>

                                <div class="text-center pt-4">
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>