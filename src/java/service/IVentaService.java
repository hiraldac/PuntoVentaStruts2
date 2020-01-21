/* 
 * Autor:  hiralda
 * Email: castroc.hiralda@gmail.com
 * Creación: 26/11/2019
 *
 */
package service;

import entity.Venta;
import java.util.List;


public interface IVentaService{
    public void CrearVenta(Venta venta);
    public void ActualizarVenta(Venta venta);
    public void EliminarVenta(long idventa);
    public Venta ObtenerRegistro(long idventa);
    public List<Venta> ObtenerRegistros();
}
