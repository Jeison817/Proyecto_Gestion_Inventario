package services;

import models.Salida;

public interface SalidaService {
	Salida obtenerSalidaPorCodigoInterno(String codigoInterno);
	 // ver si se cambia pues cambio en mapper el agregar
	Salida insertarSalida(Salida salida);
}
