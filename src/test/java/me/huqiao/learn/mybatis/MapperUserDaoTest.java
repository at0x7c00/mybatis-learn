package me.huqiao.learn.mybatis;

import java.io.InputStream;
import java.util.List;

import me.huqiao.learn.mybatis.dao.IUserDao;
import me.huqiao.learn.mybatis.entity.User;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

public class MapperUserDaoTest {

	
	SqlSessionFactory sessionFactory;
	
	@Before
	public void setUp()throws Exception{
		InputStream is = Resources.getResourceAsStream("SqlMapConfig.xml");
		sessionFactory = new SqlSessionFactoryBuilder().build(is);
		is.close();
	}
	
	@Test
	public void testFindById(){
		SqlSession sqlSession = sessionFactory.openSession();
		IUserDao userDao = sqlSession.getMapper(IUserDao.class);
		User user = userDao.findById(1);
		System.out.println(user);
		sqlSession.close();
	}
	
	@Test
	public void testFind(){
		SqlSession sqlSession = sessionFactory.openSession();
		IUserDao userDao = sqlSession.getMapper(IUserDao.class);
		User query = new User();
		query.setUsername("Èý·á");
		List<User> users = userDao.find(query);
		System.out.println(users);
		sqlSession.close();
	}
	
	
	
}
