/* 
 * Autor:  hiralda
 * Email: castroc.hiralda@gmail.com
 * Creación: 26/11/2019
 *
 */
package model;

import entity.Detalle;
import entity.Producto;
import entity.Venta;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class VentaModel implements IVentaModel{

    private SessionFactory sessionFactory;
    private Session session;
    
    @Override
    public void CrearVenta(Venta venta) {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(venta);
            venta.getDetalles().forEach((detalle) -> {session.save(detalle);});
            session.getTransaction().commit();
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void ActualizarVenta(Venta venta) {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.update(venta);
            session.getTransaction().commit();
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void EliminarVEnta(Venta venta) {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.delete(venta);
            venta.getDetalles().forEach((detalle) -> {session.delete(detalle);});
            session.getTransaction().commit();
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Venta ObtenerRegistro(long idventa) {
        Venta venta = null;
        
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            venta = (Venta) session.get(Venta.class, idventa);
            venta.setDetalles((Set) session.get(Detalle.class, venta.getIdventa()));            
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
        return venta;
    }

    @Override
    public List<Venta> ObtenerRegistros() {
        ArrayList<Venta> lista = null;
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            lista = (ArrayList<Venta>) session.createQuery("FROM venta").list();
            for (Venta u : lista) {
                System.out.println("Detalle: " + u.getIdventa());
                u.setDetalles((Set) session.get(Detalle.class, u.getIdventa()));
            }
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
        return lista;
    }
    
//    public static void main(String[] args) {
//        VentaModel vm=new VentaModel();
//        Venta venta=new Venta();
//        
//        ProductoModel p=new ProductoModel();
//        Producto p1= p.ObtenerProducto("1234");
//        Producto p2= p.ObtenerProducto("1452");
//        
//        Detalle detalle=new Detalle();
//        Detalle detalle2=new Detalle();
//        
//        detalle.setProducto(p1);
//        detalle.setCantidad(2);
//        detalle.setVenta(venta);
//        
//        detalle2.setProducto(p2);
//        detalle2.setCantidad(1);
//        detalle2.setVenta(venta);
//        
//        venta.setHora(new Date());
//        venta.setTotal(detalle.getProducto().getPrecio());
//        venta.addDetalle(detalle);
//        venta.addDetalle(detalle2);
//        
//        vm.CrearVenta(venta);
//    }
}
