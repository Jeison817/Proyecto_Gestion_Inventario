package models;

import java.sql.Date;

public class Marcas {
	   private Integer idMarcas;
	   private String nombre;
	   private String descripcion;
	   private String imagenUrl;
	   private Date fechaCreacion;
	public Integer getIdMarcas() {
		return idMarcas;
	}
	public void setIdMarcas(Integer idMarcas) {
		this.idMarcas = idMarcas;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getImagenUrl() {
		return imagenUrl;
	}
	public void setImagenUrl(String imagenUrl) {
		this.imagenUrl = imagenUrl;
	}
	public Date getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
	   
	   
	 //--------------------------
	   
	   
}
