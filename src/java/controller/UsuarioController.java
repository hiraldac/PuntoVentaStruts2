/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entity.Usuario;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import service.IUsuarioService;
import service.UsuarioService;

/**
 *
 * @author labtw03
 */
public class UsuarioController extends ActionSupport {

    IUsuarioService service = new UsuarioService();
    private ArrayList<Usuario> listaRegistros;
    Usuario usuario;
    private SessionFactory sessionFactory;
    private Session session;
    private String username;
    private String password;

    public String crearRegistro() throws Exception {
        try {
            service.CrearUsuario(usuario);
            listaRegistros = (ArrayList<Usuario>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public String obtenerRegistros() throws Exception {
        try {
            listaRegistros = (ArrayList<Usuario>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public String actualizarRegistro() throws Exception {
        try {
            service.ActualizarUsuario(usuario);
            listaRegistros = (ArrayList<Usuario>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public String eliminarRegistros() throws Exception {
        try {
            service.EliminarRegistro(usuario);
            listaRegistros = (ArrayList<Usuario>) service.ObtenerRegistros();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }

    public ArrayList<Usuario> getListaRegistros() {
        return listaRegistros;
    }

    public void setListaRegistros(ArrayList<Usuario> listaRegistros) {
        this.listaRegistros = listaRegistros;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Usuario> ObtenerRegistros() {
        ArrayList<Usuario> lista = null;
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            lista = (ArrayList<Usuario>) session.createQuery("FROM Usuario").list();
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
        }
        return lista;
    }

    public String authenticate() {
        String mensaje="";
        ArrayList<Usuario> lista = null;
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            lista = (ArrayList<Usuario>) session.createQuery("FROM Usuario").list();
            for (Usuario u : lista) {
                if(this.username.equals(u.getNombre())&& this.password.equals(u.getContrasena())){
                    listaRegistros = (ArrayList<Usuario>) service.ObtenerRegistros();
                    System.out.println("SIIIIIIIIII");
                    return SUCCESS;
                }else{
                    return ERROR;                
                }
            }
            session.close();
            sessionFactory.close();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
        return mensaje;
    }
}
