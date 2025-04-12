package services.impl;

import org.apache.ibatis.session.SqlSession;

import config.MyBatisUtil;
import dao.SalidaMapper;
import models.Salida;
import services.SalidaService;

public class SalidaServiceImpl implements SalidaService{

	@Override
	public Salida obtenerSalidaPorCodigoInterno(String codigoInterno) {
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			SalidaMapper salidaMapper= session.getMapper(SalidaMapper.class);
			return salidaMapper.obtenerSalidaPorCodigoInterno(codigoInterno);
		} catch (Exception e) {
			System.out.println("obtenerSalidaPorCodigoInterno::"+e);
			e.printStackTrace();
			
			return null;
		}
	}

	@Override
	public Salida insertarSalida(Salida salida) {
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			SalidaMapper salidaMapper= session.getMapper(SalidaMapper.class);
			salidaMapper.insertarSalida(salida);
			session.commit();
			return salida;
		} catch (Exception e) {
			System.out.println("insertarSalida::"+e);
			e.printStackTrace();			
			return null;
		}
	}

}
