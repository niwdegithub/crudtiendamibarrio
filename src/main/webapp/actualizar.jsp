<%-- 
    Document   : actualizar
    Created on : 6/10/2021, 8:20:32 p. m.
    Author     : Niwde Ziur
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="controladores.controladorarticulo"%>
<%@page import="modelos.articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
               
            <header>
            <div class="container bg-primary bg-opacity-10 text-center margen">
                <h1> Tienda Virtual Mi Barrio</h1>
            </div>             
                           
            </header>
        
        <%
        
           String codigoStr = request.getParameter("codigoarticulo");
           int codigoInt = Integer.parseInt(codigoStr);
           controladorarticulo ctrarticulo = new controladorarticulo();
           ArrayList <articulo> consultaarticulo = new ArrayList<>();
           consultaarticulo = ctrarticulo.consultar(codigoInt);
           
                   
         %>
        
        
        
        
        
        
        <section>
            <form method="POST" action="controladorarticulo">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="codigoarticulo" placeholder="name" value="<%out.println(consultaarticulo.get(0).getcodigoarticulo());%>" disabled="">
                                <label for="floatingInput">Codigo del articulo : </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="nombrearticulo" placeholder="name" value="<%out.println(consultaarticulo.get(0).getnombrearticulo());%>">
                                <label for="floatingInput">Nombre del articulo: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="cantidadarticulo" placeholder="name" value="<%out.println(consultaarticulo.get(0).getcantidadarticulo());%>">
                                <label for="floatingInput">Cantidad : </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="precioarticulo" placeholder="name" value="<%out.println(consultaarticulo.get(0).getprecioarticulo());%>">
                                <label for="floatingInput">Precio del articulo: </label>
                            </div>
                            
                            <label>Grupo del articulo: </label>
                            
                            <select class="form-select" multiple aria-label="multiple select example" name="grupoarticulo">
                                <option value="Granos">Granos</option>
                                <option value="Abarrotes">Abarrotes</option>
                                <option value="Licores">Licores</option>
                                <option value="Frutas">Frutas</option>
                                <option value="Verduras">Verduras</option>
                                <option value="Lacteos">Lacteos</option>
                                <option value="Carnicos">Carnicos</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <center>
                            <button class="btn btn-outline-success bg-opacity-10 btnSize" name="btnAccion" value="Actualizar">Actualizar</button>
                        </center>
                    </div>
                </div>
            </form>
        </section>
        
        
        
        <section class=" container margen">
            <table class="table table-striped table-hover">
                <thead>
                  <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Acción</th>
                  </tr>
                </thead>
                <tbody>
                    
                                 
                     </tbody>
                </table>
            
            
        </section>
         
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            
        <footer>
            <div class="container bg-primary bg-opacity-10 text-center margen">
                <h5> Develop by misión TIC 2021 </h5>
            </div>
        </footer>
        
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
