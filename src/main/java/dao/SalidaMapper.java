package dao;

import models.Salida;

public interface SalidaMapper {
	Salida obtenerSalidaPorCodigoInterno(String codigoInterno);
	void insertarSalida(Salida salida);
}
