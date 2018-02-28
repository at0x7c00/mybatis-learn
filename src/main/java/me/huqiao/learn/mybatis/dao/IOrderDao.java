package me.huqiao.learn.mybatis.dao;

import me.huqiao.learn.mybatis.entity.Order;

public interface IOrderDao {
	
	public Order findById(Integer id);

}
