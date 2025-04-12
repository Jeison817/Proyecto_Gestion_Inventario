package models;

import java.sql.Date;

public class Salida {
	private Integer idSalida;
	private Date fechaSalida;
	private String descripcion;
	private Integer idUsuarioComprador;	
    private Integer idUsuarioVendedor;
    private String estadoVenta;
    private Date fechaCreacion;
    private String codigoInterno;
    private String codigoBoleta;  
    private String metodoPago;
	private Float montoTotal;
	
	
	//------------------------------------------------------
	public Integer getIdSalida() {
		return idSalida;
	}
	public void setIdSalida(Integer idSalida) {
		this.idSalida = idSalida;
	}
	public Date getFechaSalida() {
		return fechaSalida;
	}
	public void setFechaSalida(Date fechaSalida) {
		this.fechaSalida = fechaSalida;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Integer getIdUsuarioComprador() {
		return idUsuarioComprador;
	}
	public void setIdUsuarioComprador(Integer idUsuarioComprador) {
		this.idUsuarioComprador = idUsuarioComprador;
	}
	public Integer getIdUsuarioVendedor() {
		return idUsuarioVendedor;
	}
	public void setIdUsuarioVendedor(Integer idUsuarioVendedor) {
		this.idUsuarioVendedor = idUsuarioVendedor;
	}
	public String getEstadoVenta() {
		return estadoVenta;
	}
	public void setEstadoVenta(String estadoVenta) {
		this.estadoVenta = estadoVenta;
	}
	public Date getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
	public String getCodigoInterno() {
		return codigoInterno;
	}
	public void setCodigoInterno(String codigoInterno) {
		this.codigoInterno = codigoInterno;
	}
	public String getCodigoBoleta() {
		return codigoBoleta;
	}
	public void setCodigoBoleta(String codigoBoleta) {
		this.codigoBoleta = codigoBoleta;
	}
	public String getMetodoPago() {
		return metodoPago;
	}
	public void setMetodoPago(String metodoPago) {
		this.metodoPago = metodoPago;
	}
	public Float getMontoTotal() {
		return montoTotal;
	}
	public void setMontoTotal(Float montoTotal) {
		this.montoTotal = montoTotal;
	}
	 
	 
}
