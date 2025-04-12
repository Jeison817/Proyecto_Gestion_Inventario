package config;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	// Definimos una clase, de tipo SqlSessionFactory y agregamos un objeto "sqlSessionFactory"
		// el cual es la instancia (sesion) que se va utlizar en el desarrrollo del proyecto
		private static SqlSessionFactory sqlSessionFactory;
	    //----------------------------------------------------------------------------
		static {	
			
			// Iniciamso la instancia (sesion) para sincronizar el java y el sql, con definimos la actividades que se 
			// va a realizar
			try {
				
				// Guardanos la direccion del archivo xml
				String resource="config/mybatis-config.xml";
				// Leemos la variable guardada, e iniciamos la lectura
				Reader reader=Resources.getResourceAsReader(resource);
				// sincronizamos y construimos la instancia (sesion) entre el java y sql
				sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
				
				
			} 
			// DEfinimos el catch, para solo mostrar errores y no perder el funcionamiento de  la interfaz grafica
			// manejo de excepsiones
			catch (Exception e) {
				System.out.println("Error MyBatisUtil: "+e.toString());
			}
		}

		//---------------------------------------------------------------------------
		// accedemos la bloque estatico, definido en la parte superio y devuelve la sesion iniciada
		// que va ser utilizada cada vez, en las sesiones del mybatis
		public static SqlSessionFactory getSqlSessionFactory() {
			return sqlSessionFactory;
		}	
}
