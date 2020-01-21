/* 
 * Autor:  hiralda
 * Email: castroc.hiralda@gmail.com
 * Creación: 26/11/2019
 * Modificación: 20/01/2019
 *
 */
package model;

import entity.Detalle;
import entity.Venta;
import java.util.ArrayList;
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
    public void EliminarVenta(long idventa) {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            session.beginTransaction();
            Venta eliminar=ObtenerRegistro(idventa);
            eliminar.getDetalles().forEach((detalle) -> {session.delete(detalle);});
            session.delete(eliminar);
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
    
}
