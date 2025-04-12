package services.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MyBatisUtil;
import dao.MarcasMapper;
import models.Marcas;
import services.MarcasService;

public class MarcasServiceImpl implements MarcasService{

	@Override
	public List<Marcas> listarMarcas() {
		try {
			
			 SqlSession session  = MyBatisUtil.getSqlSessionFactory().openSession();
			 MarcasMapper marcasMapper=session.getMapper(MarcasMapper.class);
			return marcasMapper.listarMarcas();

			
		} catch (Exception e) {
			System.out.println("listarMarcas::"+e);
			e.printStackTrace();
			return null;
		}
	}

	
}
