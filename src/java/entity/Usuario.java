package entity;
// Generated 17/01/2020 03:57:17 PM by Hibernate Tools 4.3.1



/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private long idusuario;
     private String nombre;
     private String tipo;
     private String contrasena;
     private String usuario;

    public Usuario() {
    }

    public Usuario(long idusuario, String nombre, String tipo, String contrasena, String usuario) {
       this.idusuario = idusuario;
       this.nombre = nombre;
       this.tipo = tipo;
       this.contrasena = contrasena;
       this.usuario = usuario;
    }
   
    public long getIdusuario() {
        return this.idusuario;
    }
    
    public void setIdusuario(long idusuario) {
        this.idusuario = idusuario;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getContrasena() {
        return this.contrasena;
    }
    
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    public String getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }




}


