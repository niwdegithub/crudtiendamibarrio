/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import static java.time.Clock.system;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.articulo;

/**
 *
 * @author Niwde Ziur
 */
@WebServlet(name = "controladorarticulo", urlPatterns = {"/controladorarticulo"})
public class controladorarticulo extends HttpServlet {

    articulo objarticulo = new articulo();  
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("btnAccion");
            
            if (accion.equals ("Insertar")){
            
                 int codigoarticulo = Integer.parseInt(request.getParameter("codigoarticulo"));
                 String nombrearticulo = request.getParameter("nombrearticulo");
                 int cantidadarticulo = Integer.parseInt(request.getParameter("cantidadarticulo"));
                 int precioarticulo = Integer.parseInt(request.getParameter("precioarticulo"));
                 String grupoarticulo = request.getParameter("grupoarticulo");
                 
                 objarticulo.setcodigoarticulo(codigoarticulo);
                 objarticulo.setnombrearticulo(nombrearticulo);
                 objarticulo.setcantidadarticulo(cantidadarticulo);
                 objarticulo.setprecioarticulo(precioarticulo);
                 objarticulo.setgrupoarticulo (grupoarticulo);
                 
                 objarticulo.creararticulo();
                 
                 String mensaje = "<html> <body>"+
                         "<script type='text/javaScript'>" + 
                         " alert('el articulo fue insertado de manera correcta');" +
                         " window.location.href='index.jsp'; "+
                         "</script> </body> </html>";
                 
                 out.println(mensaje);
                 
            }
            
            else if (accion.equals ("Actualizar")){
                
                int codigoarticulo = Integer.parseInt(request.getParameter("codigoarticulo"));
                String nombrearticulo = request.getParameter("nombrearticulo"); 
                int cantidadarticulo = Integer.parseInt(request.getParameter("cantidadarticulo"));
                int precioarticulo = Integer.parseInt(request.getParameter("precioarticulo"));
                String grupoarticulo = request.getParameter("grupoarticulo"); 
                
                objarticulo.setcodigoarticulo(codigoarticulo);
                objarticulo.setnombrearticulo(nombrearticulo);
                objarticulo.setcantidadarticulo(cantidadarticulo);
                objarticulo.setprecioarticulo(precioarticulo);
                objarticulo.setgrupoarticulo(grupoarticulo);
                objarticulo.actualizararticulo();
                
                String mensaje = " <html> <body>"+
                                 "<script type='text/javaScript'> "+
                                 "  alert('Producto actualizado correctamente!!'); "+
                                 "  window.location.href='index.jsp'; "+
                                 "</script> </body> </html>"; 
                
                out.println(mensaje); 
            
            }
                  
            
                                   
            
        }
        catch(Exception error){
             System.out.println("Error en el controlador:"+error);
        }
    }
    
    public ArrayList listar(){
        
    try {
        ResultSet consulta = objarticulo.listararticulo();
        ArrayList<articulo> listararticulo = new ArrayList<>();
        
        while(consulta.next()){
            objarticulo = new articulo();
            objarticulo.setcodigoarticulo(consulta.getInt(1));
            objarticulo.setnombrearticulo(consulta.getString(2));
            objarticulo.setcantidadarticulo(consulta.getInt(3));
            objarticulo.setprecioarticulo(consulta.getInt(4));
            objarticulo.setgrupoarticulo(consulta.getString(5));
            listararticulo.add(objarticulo);
            
        }
        return listararticulo;
        
    } catch (Exception error){
        System.out.println("error de controlador"+error);
    }
        return null;
    
    }
    
    
    public ArrayList consultar(int codigoarticulo){
        
    try {
        objarticulo.setcodigoarticulo(codigoarticulo);
        ResultSet consulta = objarticulo.consultararticulo();
        ArrayList<articulo> listararticulo = new ArrayList<>();
        
        while(consulta.next()){
            objarticulo = new articulo();
            objarticulo.setcodigoarticulo(consulta.getInt(1));
            objarticulo.setnombrearticulo(consulta.getString(2));
            objarticulo.setcantidadarticulo(consulta.getInt(3));
            objarticulo.setprecioarticulo(consulta.getInt(4));
            objarticulo.setgrupoarticulo(consulta.getString(5));
            listararticulo.add(objarticulo);
            
        }
        return listararticulo;
        
    } catch (Exception error){
        System.out.println("error de controlador"+error);
    }
        return null;
    
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
