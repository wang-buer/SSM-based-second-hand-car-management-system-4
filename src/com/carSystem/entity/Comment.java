package com.carSystem.entity;

public class Comment {

	private int id;
	private String content;
	private int order_car_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getOrder_car_id() {
		return order_car_id;
	}

	public void setOrder_car_id(int order_car_id) {
		this.order_car_id = order_car_id;
	}

}
