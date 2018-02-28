package me.huqiao.learn.mybatis.entity;

import java.util.Date;
import java.util.List;

/**
 * ¶©µ¥
 * @author huqiao
 */
public class Order {

	private Integer id;
	private User user;
	private Date createTime;
	private List<OrderDetail> details;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public List<OrderDetail> getDetails() {
		return details;
	}
	public void setDetails(List<OrderDetail> details) {
		this.details = details;
	}
}
