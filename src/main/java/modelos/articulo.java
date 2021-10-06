/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

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

    public int getCodigoarticulo() {
        return codigoarticulo;
    }

    public void setCodigoarticulo(int codigoarticulo) {
        this.codigoarticulo = codigoarticulo;
    }

    public String getNombrearticulo() {
        return nombrearticulo;
    }

    public void setNombrearticulo(String nombrearticulo) {
        this.nombrearticulo = nombrearticulo;
    }

    public int getCantidadarticulo() {
        return cantidadarticulo;
    }

    public void setCantidadarticulo(int cantidadarticulo) {
        this.cantidadarticulo = cantidadarticulo;
    }

    public int getPrecioarticulo() {
        return precioarticulo;
    }

    public void setPrecioarticulo(int precioarticulo) {
        this.precioarticulo = precioarticulo;
    }

    public String getGrupoarticulo() {
        return grupoarticulo;
    }

    public void setGrupoarticulo(String grupoarticulo) {
        this.grupoarticulo = grupoarticulo;
    }
    
    
    
    //METODOS
    public void creararticulo(){}
    public void consultararticulo (){}
    public void listararticulo (){}
    public void actualizararticulo (){}
    public void eliminararticulo (){}
    
}
