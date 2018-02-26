package me.huqiao.learn.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import me.huqiao.learn.mybatis.entity.User;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MyBatisTest {

	private SqlSession sqlSession;
	
	@Before
	public void init() throws IOException{
		InputStream is = Resources.getResourceAsStream("SqlMapConfig.xml");
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		sqlSession = factory.openSession();
		is.close();
	}
	
	@Test
	public void findUserByIdTest(){
		User user = sqlSession.selectOne("me.huqiao.learn.mybatis.dao.IUserDao.findById", 1);
		System.out.println(user); 
	}
	
	@Test
	public void findUsersByNameTest(){
		List<User> users = sqlSession.selectList("me.huqiao.learn.mybatis.dao.IUserDao.findByName", "%张%");
		System.out.println(users);  
	}
	
	@Test
	public void addUsersTest(){
		for(int i = 0;i<100;i++){
			User user = new User();
			user.setUsername("张三"+i);
			user.setEmail("zhangsan" + i + "@qq.com");
			int x = sqlSession.insert("me.huqiao.learn.mybatis.dao.IUserDao.add", user);
			System.out.println(x + "," + user.getId());
		}
		sqlSession.commit();
	}
	
	@Test
	public void updateUserTest(){
		User user = new User();
		user.setId(1);
		user.setUsername("张三1111");
		user.setEmail("zhangsan1111@qq.com");
		sqlSession.update("me.huqiao.learn.mybatis.dao.IUserDao.update", user);
		sqlSession.commit();
	}
	
	@Test
	public void deleteUserTest(){
		sqlSession.delete("me.huqiao.learn.mybatis.dao.IUserDao.deleteById", 2);
		sqlSession.commit();
	}
	
	@After
	public void destory(){
		if(sqlSession!=null){
			sqlSession.close();
		}
	}
	
}
