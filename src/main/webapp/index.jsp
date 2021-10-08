<%@page import="java.util.ArrayList"%>
<%@page import="controladores.controladorarticulo"%>
<%@page import="modelos.articulo"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
             
        
        <script type="text/javascript">
            function confirmar(){
                var respuesta = confirm("¿Desea eliminar el producto?"); 
                if(respuesta === true){
                    return true; 
                }
                else{
                    return false; 
                }
            }
        </script>
             
        
            <header>
            <div class="container bg-primary bg-opacity-10 text-center margen">
                <h1> Tienda Virtual Mi Barrio</h1>
            </div>             
                           
            </header>
        
        
        
        <section>
            <form method="POST" action="controladorarticulo">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="codigoarticulo" placeholder="name">
                                <label for="floatingInput">Codigo del articulo : </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="nombrearticulo" placeholder="name">
                                <label for="floatingInput">Nombre del articulo: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="cantidadarticulo" placeholder="name">
                                <label for="floatingInput">Cantidad : </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="precioarticulo" placeholder="name">
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
                            <button class="btn btn-outline-success bg-opacity-10 btnSize" name="btnAccion" value="Insertar">Insertar articulo</button>
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
                    <th scope="col">Accion</th>
                  </tr>
                </thead>
                <tbody>
                    
                    <%
                       ArrayList<articulo>listaarticulo =new ArrayList<>();
                       controladorarticulo ctrarticulo = new controladorarticulo();
                       listaarticulo = ctrarticulo.listar();
                       
                       for(int i=0; i<listaarticulo.size(); i++ ){
                        
                    %>
                    
                    <tr>
                        <th scope= "row"> <%=listaarticulo.get(i).getcodigoarticulo()%> </th>
                        <td> <%=listaarticulo.get(i).getnombrearticulo()%> </td>
                        <td> <%=listaarticulo.get(i).getcantidadarticulo()%> </td>
                        <td> <%=listaarticulo.get(i).getprecioarticulo()%> </td>
                        <td> <%=listaarticulo.get(i).getgrupoarticulo()%> </td>
                        <td> 
                        
                        <a href="actualizar.jsp?codigoarticulo=<%=listaarticulo.get(i).getcodigoarticulo()%>"><button class="btn btn-primary">Actualizar</button></a>
                        <a href="controladorarticulo?codigoarticulo=<%=listaarticulo.get(i).getcodigoarticulo()%>&btnAccion=Eliminar"><button class="btn btn-danger" onclick="return confirmar();">Eliminar</button></a>
                        
                        </td>
                    </tr>
                    
                                   
                    <%}%>             
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
