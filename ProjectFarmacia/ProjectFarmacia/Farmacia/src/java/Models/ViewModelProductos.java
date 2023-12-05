/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author Tambo
 */
public class ViewModelProductos {
    private int id;
    private String nombre;
    private String descripcion;
    private float precio;
    private Date fechaVencimiento;
    private int stockActual;
    private int stockMinimo;
    private Date fechaUltimaCompra;
    private Date fechaUltimaVenta;
    private String instrucciones;
    private int idPrecentacion;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the precio
     */
    public float getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(float precio) {
        this.precio = precio;
    }

    /**
     * @return the fechaVencimiento
     */
    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    /**
     * @param fechaVencimiento the fechaVencimiento to set
     */
    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    /**
     * @return the stockActual
     */
    public int getStockActual() {
        return stockActual;
    }

    /**
     * @param stockActual the stockActual to set
     */
    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }

    /**
     * @return the stockMinimo
     */
    public int getStockMinimo() {
        return stockMinimo;
    }

    /**
     * @param stockMinimo the stockMinimo to set
     */
    public void setStockMinimo(int stockMinimo) {
        this.stockMinimo = stockMinimo;
    }

    /**
     * @return the fechaUltimaCompra
     */
    public Date getFechaUltimaCompra() {
        return fechaUltimaCompra;
    }

    /**
     * @param fechaUltimaCompra the fechaUltimaCompra to set
     */
    public void setFechaUltimaCompra(Date fechaUltimaCompra) {
        this.fechaUltimaCompra = fechaUltimaCompra;
    }

    /**
     * @return the fechaUltimaVenta
     */
    public Date getFechaUltimaVenta() {
        return fechaUltimaVenta;
    }

    /**
     * @param fechaUltimaVenta the fechaUltimaVenta to set
     */
    public void setFechaUltimaVenta(Date fechaUltimaVenta) {
        this.fechaUltimaVenta = fechaUltimaVenta;
    }

    /**
     * @return the instrucciones
     */
    public String getInstrucciones() {
        return instrucciones;
    }

    /**
     * @param instrucciones the instrucciones to set
     */
    public void setInstrucciones(String instrucciones) {
        this.instrucciones = instrucciones;
    }

    /**
     * @return the idPrecentacion
     */
    public int getIdPrecentacion() {
        return idPrecentacion;
    }

    /**
     * @param idPrecentacion the idPrecentacion to set
     */
    public void setIdPrecentacion(int idPrecentacion) {
        this.idPrecentacion = idPrecentacion;
    }
    
    
    
}
