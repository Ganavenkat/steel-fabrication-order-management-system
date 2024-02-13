package com.project.controller;

import java.util.*;

import com.project.dta.OrderDto;
import com.project.etities.*;
import com.project.services.OrderServices;
import com.project.services.ReviewServices;
import io.swagger.models.auth.In;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.project.dta.ProductInputDto;//////////////////////////////////////////////////M
import com.project.dta.ProductUpdateDto;

import com.project.services.CategoryServices;
import com.project.services.ProductServices;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@CrossOrigin
@RestController()
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductServices productService;

    @Autowired
    ReviewServices reviewServices;

    @Autowired
    OrderServices orderServices;

    @Autowired
    CategoryServices categoryServices;
    @Autowired
    CategoryServices catService;

    private final Map<Integer, Product> mycartMap = new LinkedHashMap<>();

    //	@GetMapping("")
//	public ResponseEntity<List<Product>> findAll(){
//		List<Product> productList = productService.findAll();
//		if(productList ==  null) return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
//      return ResponseEntity.ok(productList);
//	}
    @GetMapping("/user")
    public ModelAndView findAll(HttpServletRequest request, HttpSession session) {

        String category = request.getParameter("category");
//		System.out.println("category =" + category);
        List<Product> products = productService.findByCategory(category);
        if (category != null && category.equals("all products")) {
            products = productService.findAll();
        }
        session.setAttribute("MyProductList", products);
        return new ModelAndView("customerportal");
    }

    @GetMapping("")
    public ModelAndView findAlll(HttpServletRequest request, HttpSession session) {

        String category = request.getParameter("category");
//		System.out.println("category =" + category);
        List<Product> products = productService.findByCategory(category);
        if (category != null && category.equals("all products")) {
            products = productService.findAll();
        }
        session.setAttribute("MyProductList", products);
        return new ModelAndView("shop");
    }
    @GetMapping("/clogin")
    public ModelAndView clogin()
    {
        ModelAndView m = new ModelAndView("customerlogin");
        return m;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Product> findById(@PathVariable("id") int id) {
        Product product = productService.findById(id);
        //	System.out.println(product);
        if (product == null) throw new RuntimeException("Customer not found");
        return ResponseEntity.ok(product);
    }

    @GetMapping("/bycategory/{id}")
    public ResponseEntity<List<Product>> findByCategory(@PathVariable("id") int cid) {
        Category cat = catService.findById(cid);
        List<Product> productList = cat.getProductList();
        System.out.println(Arrays.toString(productList.toArray()));
        if (productList == null)
            throw new RuntimeException("No product found");
        System.out.println(productList);
        return ResponseEntity.ok(productList);
    }

    @GetMapping("/price/{min}/{max}")
    public ResponseEntity<List<Product>> findByPriceRange(@PathVariable("id") double minPrice, @PathVariable("id") double maxPrice) {

        List<Product> productList = productService.findByPriceBetween(minPrice, maxPrice);
        if (productList == null)
            throw new RuntimeException("No product found");
        return ResponseEntity.ok(productList);

    }

    //comman controller
    @GetMapping("/reviews/{id}")
    public ResponseEntity<List<Review>> getReviews(@PathVariable("id") int pid) {
        Product product = productService.findById(pid);
        List<Review> reviewList = product.getReviews();
        if (reviewList == null)
            throw new RuntimeException("No reviews found");
        return ResponseEntity.ok(reviewList);
    }

//    @PostMapping("/addreview")
//    public ResponseEntity<Product> addReview(@RequestBody Review review) {
//        System.out.println(review);
//        Product product = productService.findById(review.getpId());
//        product.addReview(review);
//        return ResponseEntity.ok(product);
//    }


    @PostMapping("")
    public ResponseEntity<?> save(ProductInputDto productDto) {
        System.out.println(productDto);
        Product product = ProductInputDto.toEntity(productDto);
        System.out.println(product);
        product = productService.saveProduct(product, productDto.getThumbnail());
        return ResponseEntity.ok(product);
    }

    @GetMapping("/averagestar/{pid}")
    public Double getAverageStar(@PathVariable("pid") int pid) {
        return productService.getAverageStar(pid);
    }


    @DeleteMapping("/delete/{p_id}")
    public ResponseEntity<?> findById1(@PathVariable("p_id") int p_id) {
        Product product = productService.findById(p_id);
        productService.delete(product);
        return ResponseEntity.ok("product  deleted successfully!");

    }

    @PutMapping("/update/{pid}")
    public ResponseEntity<?> update(@RequestBody ProductUpdateDto proDto, @PathVariable("pid") int pid) {
        Product product = productService.findById(pid);
        product.setQty(ProductUpdateDto.getQty());
        product.setPrice(ProductUpdateDto.getPrice());
        productService.save(product);
        return ResponseEntity.ok(product);

    }

    @GetMapping("/addToCart")
    public ModelAndView addtoCart(@RequestParam("id") String id, HttpSession session) {
        Product product = productService.findById(Integer.valueOf(id));
        mycartMap.put(Integer.valueOf(id), product);
        session.setAttribute("MyCart", mycartMap);
        return new ModelAndView("customerportal");
    }

    @GetMapping("/showProductInfo")
    public ModelAndView viewProduct(@RequestParam("id") String id, HttpSession session,
                                    HttpServletRequest request) {
        Product productinfo = productService.findById(Integer.valueOf(id));
        request.setAttribute("MyProductInfo", productinfo);
        return new ModelAndView("viewProduct");
    }

    @PostMapping("/continueshopping")
    public ModelAndView continueShopping() {
        return new ModelAndView("customerportal");
    }

    @PostMapping("/login")
    public ModelAndView Login()
    {
        return new ModelAndView("loginportal");
    }

    @GetMapping("/showMyCart")
    public ModelAndView showBooksInMyCart(HttpServletRequest request, HttpSession session) {
        System.out.println("-------BookStoreController--showBooksInMyCart()---------");
        Object obj = session.getAttribute("MyCart");
        Map<Integer, Product> cartMap = (Map<Integer, Product>) obj;
        Collection<Product> cartprodList = (Collection<Product>) cartMap.values();
        session.setAttribute("MyCartItems", cartprodList);
        if (cartprodList.isEmpty()) {
            request.setAttribute("CartEmptyMSG", "No Books Cart- Please Continue Shopping");
        }
        return new ModelAndView("showcart");
    }

    @GetMapping("/placeOrder")
    public ModelAndView putorder() {
        orderServices.placeOrder(mycartMap,1);
        return new ModelAndView("ordersuccess");
    }

    @PostMapping("/removeFromCart")
    public ModelAndView remove(@RequestParam("id") String id) {
        mycartMap.remove(Integer.valueOf(id));
        return new ModelAndView("showcart");
    }

//    @PostMapping("/addreview")
//    public ModelAndView addreview(@RequestParam("id") String id)
//    {
//        Review review = new Review();
//
//
//
//        reviewServices.addReview(review);
//    }

    @GetMapping("/showRatingForm")
    public ModelAndView show()
    {
        return new ModelAndView("addreview");
    }
    @PostMapping("/addreview")
    public ModelAndView addMyRating(@RequestParam("pId") String pId,
                                    @RequestParam("star") String star,
                                    @RequestParam("description") String description)
    {
        Review review=new Review();
        review.setDescription(description);
        review.setStar(Integer.parseInt(star));
        review.setpId(Integer.parseInt(pId));
        review.setcId(1);
        reviewServices.addReview(review);

        return new ModelAndView("ratingsuccess");
    }




}
	

	

