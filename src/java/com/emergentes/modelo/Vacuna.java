package com.emergentes.modelo;

/**
 *
 * @author YURIKIRA105
 */
public class Vacuna {
    private int id;
    private String nombre;
    private String peso;
    private String talla;
    private String vacuna;
    
    public Vacuna()
    {
        id  = 0;
        nombre = "";
        peso = "";
        talla = "";    
        vacuna = ""; 
    } 
    public Vacuna (int id, String nombre, String peso, String talla, String vacuna ){
        this.id = id;
        this.nombre = nombre;
        this.peso = peso;
        this.talla = talla;
        this.vacuna = vacuna;
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id = id;
    }
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public String getPeso(){
        return peso;
    }
    public void setPeso(String peso){
        this.peso = peso;
    }
    public String getTalla(){
        return talla;
    }
    public void setTalla(String talla){
        this.talla = talla;
    }
    public String getVacuna(){
        return vacuna;
    }
    public void setVacuna(String vacuna){
        this.vacuna = vacuna;
    }
}
