package com.project.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.project.dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.dao.ProductDao;
import com.project.dao.ReviewDao;
import com.project.etities.Category;
import com.project.etities.Product;
import com.project.utils.StorageService;

@Transactional
@Service
public class ProductServicesImpl implements ProductServices{
	
	@Autowired
	private ProductDao proDao;
	
	@Autowired
	private StorageService storageService;

	@Autowired
	CategoryDao categoryDao;
	
	@Autowired 
	ReviewDao revDao;
	
	@Override
	public Product save(Product product) {
		return proDao.save(product);
	}

	public Product findById(int i) {
	  Optional<Product> p= proDao.findById(i);
		Product product=p.orElse(null);
		return product;
	
	}

	@Override
	public List<Product> findAll() {
		
		return proDao.findAll();
	}
	

	@Override
	public List<Product> findByPriceBetween(double minPrice, double maxPrice) {
		return proDao.findByPriceBetween(minPrice, maxPrice);
	}

	@Override
	public Product saveProduct(Product product, MultipartFile thumbnail) {
		String fileName = storageService.store(thumbnail);
		product.setThumbnail(fileName);
		return proDao.save(product);
		
	}

	@Override
	public Double getAverageStar(int pid) {
		
		return revDao.getAverageStar(pid);
	}


	@Override
	public void delete(Product product) {
		proDao.delete(product);
		
	}

	@Override
	public List<Product> findByCategory(String category) {
		List<Product> products = proDao.findAll();
		Category category1= categoryDao.findByName(category);
		List<Product> productList = new ArrayList<>();

		for(var s:products)
		{
			if(category1!=null && s.getCatId() == category1.getId())
			{
				productList.add(s);
			}
		}
		return productList;
	}


}
