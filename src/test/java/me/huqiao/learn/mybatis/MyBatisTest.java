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
		User user = sqlSession.selectOne("me.huqiao.learn.mybatis.entity.User.findUserById", 1);
		System.out.println(user); 
	}
	@Test
	public void findUsersByNameTest(){
		List<User> users = sqlSession.selectList("me.huqiao.learn.mybatis.entity.User.findUsersByName", "%уе%");
		System.out.println(users);  
	}
	
	@After
	public void destory(){
		if(sqlSession!=null){
			sqlSession.close();
		}
	}
	
}
