package com.project.services;

import java.util.List;
import java.util.Map;


import com.project.etities.Order;
import com.project.etities.Product;
import io.swagger.models.auth.In;

public interface OrderServices {
     Order save(Order order);
     List<Order> findByCId(int cid);
     Order cancelOrder(int oid);
	List<Order> findAll();
	Order findById(int oid);
	List<Order> findByStatus(String string);
	List<Order> findByStatusNot(String string);
	int getMinStaffId();
	List<Order> findByStaff(int id);

	void placeOrder(Map<Integer, Product> myCartMap,Integer id);
	
}
