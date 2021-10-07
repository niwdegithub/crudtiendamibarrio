/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Niwde Ziur
 */
public class articulo {
    //ATRIBUTOS
    int codigoarticulo; 
    String nombrearticulo; 
    int cantidadarticulo; 
    int precioarticulo; 
    String grupoarticulo;

    //CONSTRUCTOR
    public articulo() {
    }
    
    //ENCAPSULAR

    public int getcodigoarticulo() {
        return codigoarticulo;
    }

    public void setcodigoarticulo(int codigoarticulo) {
        this.codigoarticulo = codigoarticulo;
    }

    public String getnombrearticulo() {
        return nombrearticulo;
    }

    public void setnombrearticulo(String nombrearticulo) {
        this.nombrearticulo = nombrearticulo;
    }

    public int getcantidadarticulo() {
        return cantidadarticulo;
    }

    public void setcantidadarticulo(int cantidadarticulo) {
        this.cantidadarticulo = cantidadarticulo;
    }

    public int getprecioarticulo() {
        return precioarticulo;
    }

    public void setprecioarticulo(int precioarticulo) {
        this.precioarticulo = precioarticulo;
    }

    public String getgrupoarticulo() {
        return grupoarticulo;
    }

    public void setgrupoarticulo(String grupoarticulo) {
        this.grupoarticulo = grupoarticulo;
    }
    
    
    
    //METODOS
    public void creararticulo(){
        conexion objConector = new conexion(); 
        objConector.conectar();
        
        try {
            String sql="INSERT INTO articulo VALUES (?,?,?,?,?);";
            PreparedStatement stmt;
            stmt = objConector.conn.prepareStatement(sql);
            stmt.setInt(1, this.codigoarticulo);
            stmt.setString(2, this.nombrearticulo);
            stmt.setInt(3, this.cantidadarticulo);
            stmt.setInt(4, this.precioarticulo);
            stmt.setString(5,this.grupoarticulo);
            
            stmt.execute();
            
            objConector.desconectar();
            
            
            
        } catch (Exception error) {
            System.out.println("Error en el modelo:"+error);
        }
    }
    public ResultSet consultararticulo (){
    
       conexion objconector = new conexion();
               objconector.conectar();
               
               try {
                   String sql = "SELECT * FROM articulo WHERE codigoarticulo=?;";
                   PreparedStatement stmt;
                   stmt = objconector.conn.prepareStatement(sql);
                   stmt.setInt(1,this.codigoarticulo);
                   ResultSet consulta = stmt.executeQuery();
                   objconector.desconectar();
                   return consulta;
                   
               } catch (Exception error){
                   System.out.println("Error modelo:"+error);
               }
               return null;
    
    
    }
    public ResultSet listararticulo (){
               conexion objconector = new conexion();
               objconector.conectar();
               
               try {
                   String sql = "SELECT * FROM articulo";
                   PreparedStatement stmt;
                   stmt = objconector.conn.prepareStatement(sql);
                   ResultSet consulta = stmt.executeQuery();
                   objconector.desconectar();
                   return consulta;
                   
               } catch (Exception error){
                   System.out.println("Error modelo:"+error);
               }
               return null;
    }
    public void actualizararticulo (){
    
               conexion objConector = new conexion(); 
        objConector.conectar();
        
        try {
            String sql= "UPDATE articulo SET " +
                          "nombrearticulo = ?, " +
                          "cantidadarticulo = ?, " +
                          "precioarticulo = ?, " +
                          "grupoarticulo = ? " +
                          "WHERE codigoarticulo = ?; ";
            PreparedStatement stmt;
            stmt = objConector.conn.prepareStatement(sql);
            stmt.setInt(5, this.codigoarticulo);
            stmt.setString(1, this.nombrearticulo);
            stmt.setInt(2, this.cantidadarticulo);
            stmt.setInt(3, this.precioarticulo);
            stmt.setString(4,this.grupoarticulo);
            
            stmt.execute();
            
            objConector.desconectar();
            
            
            
        } catch (Exception error) {
            System.out.println("Error en el modelo:"+error);
        }
        
        
    
    }
    public void eliminararticulo (){}
    
}
