<%-- 
    Document   : actualizar
    Created on : 6/10/2021, 8:20:32 p. m.
    Author     : Niwde Ziur
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelos.articulo"%>
<%@page import="controladores.controladorarticulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
        <title> Tienda Virtual Mi Barrio </title>
    </head>
    <body background="assets/imagenes/pix.jpg">
        
        <center>    
        <a href=index.jsp><img src="assets/imagenes/casa.png" style="height: 100px; width: 150px"></a>
        <center/>
        
        <%  
            String codigoStr = request.getParameter("codigoarticulo"); 
            int codigo = Integer.parseInt(codigoStr.toString());  
            controladorarticulo ctrarticulo = new controladorarticulo(); 
            ArrayList<articulo> consultaarticulo = new ArrayList<>(); 
            consultaarticulo = ctrarticulo.consultar(codigo); 
            
        %>
        
        <div class="container bg-primary bg-opacity-10 text-center margen">
            <h1> Tienda Virtual Mi Barrio </h1>
        </div>
        
        <section>
            <form method="POST" action="controladorarticulo">
                <div class="container">
                    <h3>Gestión de productos </h3>
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control"  name="codigoarticulo" value="<%out.println(consultaarticulo.get(0).getcodigoarticulo()); %>" readonly="">
                                <label for="floatingInput">Codigo: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"  name="nombrearticulo" value="<%out.println(consultaarticulo.get(0).getnombrearticulo()); %>" required="">
                                <label for="floatingInput">nombre: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="cantidadarticulo" value="<%out.println(consultaarticulo.get(0).getcantidadarticulo()); %>" required="">
                                <label for="floatingInput">cantidad: </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="Arroz" name="precioarticulo" value="<%out.println(consultaarticulo.get(0).getprecioarticulo()); %>" required="">
                                <label for="floatingInput">precio: </label>
                            </div>
                            <label>Categoria: </label>
                            <br>
                            <select class="form-select" multiple aria-label="multiple select example" name="grupoarticulo" required="">
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
                             
                    <div class="row float-end">
                        <div class="col">
                                        
                    <center>
                            <button class="btn btn-outline-success bg-opacity-10 btnSize" name="btnAccion" value="Actualizar">Actualizar articulo</button>
                    </center>      
                    </div>
                    </div>
                    
                </div>          
            </form>
        </section>
                                             
                                                                    
        <script src="assets/js/bootstrap.min.js" type="text/javascript"> </script>
        
        </body>
        
         <footer>
            <div class="container bg-primary bg-opacity-10 text-center margen">
                <center><h3> Develop by misión TIC 2021 </h3></center>
            </div>
        </footer> 
        
        
</html>