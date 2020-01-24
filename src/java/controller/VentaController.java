/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.Detalle;
import entity.Venta;
import java.math.BigDecimal;
import java.util.ArrayList;
import service.IVentaService;
import service.VentaService;

/**
 *
 * @author labtw03
 */
public class VentaController extends ActionSupport {
    private IVentaService service = new VentaService();
    private ArrayList<Venta> listaRegistros;
    private Venta venta;
    private long idventa;
    private BigDecimal totalventa;
    private ArrayList<Detalle> listaDetalle;

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

    public String eliminarRegistro() throws Exception {
        try {
            service.EliminarVenta(venta.getIdventa());
            listaRegistros = (ArrayList<Venta>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }
    
    public String obtenerRegistro() throws Exception {
        try {
            venta = service.ObtenerRegistro(idventa);
            venta.getDetalles().forEach((detalle) -> {listaDetalle.add((Detalle)detalle);} );
            setTotalventa();
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

    public Venta getVenta() {
        return venta;
    }

    public void setVenta(Venta venta) {
        this.venta = venta;
    }

    public long getIdventa() {
        return idventa;
    }

    public void setIdventa(long idventa) {
        this.idventa = idventa;
    }

    public BigDecimal getTotalventa() {
        return totalventa;
    }

    public void setTotalventa() {
        this.totalventa=new BigDecimal(0);
        this.listaDetalle.forEach((detalle) -> {
            totalventa.add(
                (detalle).getProducto().getPrecio().multiply(
                        (new BigDecimal((detalle).getCantidad()))))
                ;} );
    }

    
    public void agregarCarrito(Detalle detalle) {
        detalle.setVenta(venta);
    }
 
    public static void main(String[] args) throws Exception {
        VentaController vc = new VentaController();
        vc.idventa=1;
        vc.obtenerRegistro();
    }
}
