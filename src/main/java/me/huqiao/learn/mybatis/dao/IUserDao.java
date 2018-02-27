package me.huqiao.learn.mybatis.dao;

import java.util.List;

import me.huqiao.learn.mybatis.entity.User;

public interface IUserDao {

	public User findById(int id);
	public List<User> findByName(String name);
	public int add(User user);
	public void update(User user);
	public void deleteById(int id);
	
	public List<User> find(User user);
	
}
