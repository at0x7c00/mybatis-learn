package me.huqiao.learn.mybatis.entity;

/**
 * ¶©µ¥ÏêÇé
 * @author huqiao
 */
public class OrderDetail {

	private Integer id;
	private Order order;
	private Item item;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	
}
