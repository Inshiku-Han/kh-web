package sqlmap;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	public static SqlSessionFactory sqlSession;
	
	static {
		String resource = "sqlmap/configuration.xml";
		Reader reader;
		
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}
}








