package com.project.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.etities.Customer;
import com.project.etities.Order;
import com.project.model.Credential;
import com.project.model.Transaction;
import com.project.services.CustomerServices;
import com.project.services.OrderServices;
import org.springframework.web.servlet.ModelAndView;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@CrossOrigin
@RequestMapping("/customers")
@RestController
public class CustomerController {
	@Autowired
	private CustomerServices custService;
	
	
//	@GetMapping("/customers/{id}")
//	public @ResponseBody Customer findByid(@PathVariable("id") int id) {
//		Customer cust = custService.findById(id);
//		return cust;
//	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Customer> findById(@PathVariable("id") int id){
		Customer cust = custService.findById(id);
		System.out.println(cust);
		if(cust == null) throw new RuntimeException("Customer not found");
		return ResponseEntity.ok(cust);
	}
	
	@GetMapping("")
	public ResponseEntity<List<Customer>> findAll(){
		List<Customer> custList = custService.findAll();
		if(custList ==  null) return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
		return ResponseEntity.ok(custList);
	}
//	@GetMapping("")
//	public ResponseEntity<List<Customer>> findAll(){
//		List<Customer> custList = custService.findAll();
//		if(custList ==  null) return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
//		return ResponseEntity.ok(custList);
//	}

	//signup
//	@PostMapping("")
//	public ResponseEntity<Customer> save(@RequestBody Customer cust){
//		Customer newCust = custService.save(cust);
//		if(newCust == null) throw new RuntimeException("Something went wrong");
//		return ResponseEntity.ok(newCust);
//	}

	@PostMapping("signup")
	public ModelAndView save(@RequestParam("firstName") String firstName,
							 @RequestParam("lastName") String lastName,
							 @RequestParam("state") String state,
							 @RequestParam("city") String city,
							 @RequestParam("landmark") String landmark,
							 @RequestParam("pin") String pin,
							 @RequestParam("phone") String phone,
							 @RequestParam("email") String email,
							 @RequestParam("dob") @DateTimeFormat(pattern="yyyy-MM-dd") Date dob,
							 @RequestParam("password") String password){
		Customer newCust = new Customer(firstName,lastName,state,city,landmark,pin,phone,email,dob,password,0);
		custService.save(newCust);
		if(newCust == null) throw new RuntimeException("Something went wrong");
		return new ModelAndView("registersuccess");
	}
	@GetMapping("/continueLogin")
    public ModelAndView continuelogin()
    {
        return new ModelAndView("customerlogin");
    }

	@GetMapping("/continueshopping")
	public ModelAndView continueShopping()
	{
		return new ModelAndView("index");
	}

	


//	@PostMapping("/login")
//	public ResponseEntity<HashMap<String, Object>> authenticate(@RequestBody Credential cred){
//		Customer cust = custService.authenticate(cred.getMail(), cred.getPassword());
//		if(cust == null) throw new RuntimeException("Wrong email id or password");
//		HashMap<String, Object> ht = new HashMap<String, Object>();
//		ht.put("status", new String("success"));
//		ht.put("data", cust);
//		return ResponseEntity.ok(ht);
//	}

	@PostMapping("/customerloginServlet")
	public ModelAndView authenticate(@RequestParam String email,@RequestParam String password){
		Customer cust = custService.authenticate(email, password);
//		if(cust == null) throw new RuntimeException("Wrong email id or password");
//		HashMap<String, Object> ht = new HashMap<String, Object>();
//		ht.put("status", new String("success"));
//		ht.put("data", cust);
//		return ResponseEntity.ok(ht);

		return new ModelAndView("customerportal");


	}

	@PostMapping("/update")
	public ResponseEntity<HashMap<String, Object>> update(@RequestBody Customer cust){
		
		System.out.println("recived" + cust);
		Customer updatedCust = custService.save(cust);
		if(updatedCust == null) new RuntimeException("Something went wrong");
		HashMap<String, Object> ht = new HashMap<String, Object>();
		ht.put("status", new String("success"));
		ht.put("data", updatedCust);
		return ResponseEntity.ok(ht);
	}
	
	
	
	@PostMapping("/pay")
	public ResponseEntity<String> pay(@RequestBody Transaction transaction){
		System.out.println(transaction);
		custService.transaction(transaction.getAmount(), transaction.getCid());
		return null;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	

	
}

