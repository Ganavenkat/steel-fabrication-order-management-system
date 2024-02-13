package com.project.services;

import com.project.etities.Review;

import java.util.List;

public interface ReviewServices {
	
	Review addReview(Review review);

	List<Review> findAll();
	
	
}
