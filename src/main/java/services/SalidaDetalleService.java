package services;

import models.SalidaDetalle;

public interface SalidaDetalleService {
	SalidaDetalle obtenerSalidaDetallePorIdSalidaYIdProducto(Integer idSalida, Integer idProducto);
	SalidaDetalle insertarSalidaDetalle(SalidaDetalle salidaDetalle);
	void aumentarSalidaDetalleCantidad(Integer idSalidaDetalle);
}
