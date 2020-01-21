/* 
 * Autor:  hiralda
 * Email: castroc.hiralda@gmail.com
 * Creación: 26/11/2019
 *
 */
package service;

import entity.Venta;
import java.util.List;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import model.IVentaModel;
import model.VentaModel;

@ManagedBean(name = "ventaService")
@ApplicationScoped
public class VentaService implements IVentaService{
     IVentaModel ivm =new VentaModel() ;

    @Override
    public void CrearVenta(Venta venta) {
        ivm.CrearVenta(venta);
    }

    @Override
    public void ActualizarVenta(Venta venta) {
        ivm.ActualizarVenta(venta);
    }

    @Override
    public void EliminarVenta(long idventa) {
        ivm.EliminarVenta(idventa);
    }

    @Override
    public Venta ObtenerRegistro(long idventa) {
        return ivm.ObtenerRegistro(idventa);
    }

    @Override
    public List<Venta> ObtenerRegistros() {
        return ivm.ObtenerRegistros();
    }
    
}
