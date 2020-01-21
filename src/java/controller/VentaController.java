/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import entity.Venta;
import java.util.ArrayList;
import service.IVentaService;
import service.VentaService;

/**
 *
 * @author labtw03
 */
public class VentaController {
    IVentaService service = new VentaService();
    private ArrayList<Venta> listaRegistros;
    Venta venta;
    

    public String crearRegistro() throws Exception {
        try {
            service.CrearVenta(venta);
            listaRegistros = (ArrayList<Venta>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public String obtenerRegistros() throws Exception {
        try {
            listaRegistros = (ArrayList<Venta>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public String eliminarRegistros() throws Exception {
        try {
            service.EliminarVenta(venta.getIdventa());
            listaRegistros = (ArrayList<Venta>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }
    
    public String mostrarRegistro() throws Exception {
        try {
            service.ActualizarVenta(venta);
            listaRegistros = (ArrayList<Venta>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public ArrayList<Venta> getListaRegistros() {
        return listaRegistros;
    }

    public void setListaRegistros(ArrayList<Venta> listaRegistros) {
        this.listaRegistros = listaRegistros;
    }

    public Venta getUsuario() {
        return venta;
    }

    public void setUsuario(Venta venta) {
        this.venta = venta;
    }
    
    public void agregarCarrito(Venta venta) {
        this.venta = venta;
    }
}
