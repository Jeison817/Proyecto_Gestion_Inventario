package models;

import java.sql.Date;

public class SalidaDetalle {
	private Integer idSalidaDetalle;
    private Integer idSalida;
    private Integer idProducto;
    private Integer cantidad;
    private Float precioUnitario;
    private Date fechaCreacion;
	public Integer getIdSalidaDetalle() {
		return idSalidaDetalle;
	}
	public void setIdSalidaDetalle(Integer idSalidaDetalle) {
		this.idSalidaDetalle = idSalidaDetalle;
	}
	public Integer getIdSalida() {
		return idSalida;
	}
	public void setIdSalida(Integer idSalida) {
		this.idSalida = idSalida;
	}
	public Integer getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(Integer idProducto) {
		this.idProducto = idProducto;
	}
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Float getPrecioUnitario() {
		return precioUnitario;
	}
	public void setPrecioUnitario(Float precioUnitario) {
		this.precioUnitario = precioUnitario;
	}
	public Date getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
    
    
    //-----------------------------------------------
	
    
    
}
