package services.impl;

import org.apache.ibatis.session.SqlSession;
import config.MyBatisUtil;
import dao.SalidaDetalleMapper;
import models.SalidaDetalle;
import services.SalidaDetalleService;

public class SalidaDetalleServiceImpl implements SalidaDetalleService{

	@Override
	public SalidaDetalle obtenerSalidaDetallePorIdSalidaYIdProducto(Integer idSalida, Integer idProducto) {
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			SalidaDetalleMapper salidaDetalleMapper= session.getMapper(SalidaDetalleMapper.class);
			return salidaDetalleMapper.obtenerSalidaDetallePorIdSalidaYIdProducto(idSalida, idProducto);
		} catch (Exception e) {
			System.out.println("obtenerSalidaDetallePorIdSalidaYIdProducto::"+e);
			e.printStackTrace();			
			return null;
		}
	}

	@Override
	public SalidaDetalle insertarSalidaDetalle(SalidaDetalle salidaDetalle) {
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			SalidaDetalleMapper salidaDetalleMapper= session.getMapper(SalidaDetalleMapper.class);
			salidaDetalleMapper.insertarSalidaDetalle(salidaDetalle);;
			session.commit();
			return salidaDetalle;
		} catch (Exception e) {
			System.out.println("insertarSalidaDetalle::"+e);
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void aumentarSalidaDetalleCantidad(Integer idSalidaDetalle) {
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			SalidaDetalleMapper salidaDetalleMapper= session.getMapper(SalidaDetalleMapper.class);
			salidaDetalleMapper.aumentarSalidaDetalleCantidad(idSalidaDetalle);;
			session.commit();
		} catch (Exception e) {
			System.out.println("insertarSalidaDetalle::"+e);
			e.printStackTrace();
		}
		
	}

}
