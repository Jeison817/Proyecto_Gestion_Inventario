package dao;

import org.apache.ibatis.annotations.Param;

import models.SalidaDetalle;

public interface SalidaDetalleMapper {
	SalidaDetalle obtenerSalidaDetallePorIdSalidaYIdProducto(@Param("idSalida") Integer idSalida,@Param("idProducto") Integer idProducto);
	void insertarSalidaDetalle(SalidaDetalle salidaDetalle);
	void aumentarSalidaDetalleCantidad(Integer idSalidaDetalle);
}
