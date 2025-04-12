package services.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MyBatisUtil;
import dao.RolesMapper;
import models.Roles;
import services.RolesService;

public class RolesServiceImpl implements RolesService {

	@Override
	public List<Roles> listarRoles() {
		try {
			
			 SqlSession session  = MyBatisUtil.getSqlSessionFactory().openSession();
			RolesMapper rolesMapper=session.getMapper(RolesMapper.class);
			return rolesMapper.listarRoles();
			
		} catch (Exception e) {
			System.out.println("listarRoles::"+e);
			e.printStackTrace();
			return null;
		}
	}

}
