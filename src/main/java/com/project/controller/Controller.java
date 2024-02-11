package com.project.controller;

import com.oracle.wls.shaded.org.apache.xpath.operations.Mod;
import com.project.etities.Customer;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

//@org.springframework.stereotype.Controller
@RestController
public class Controller {

    @GetMapping("/index")
//    public ModelAndView Default(HttpSession session,@PathVariable String name)
    public ModelAndView index()
    {
        //session.setAttribute("name",name);
        ModelAndView m = new ModelAndView("index");
        return m;
    }

    @GetMapping("/")
    public ModelAndView shop()
    {
        return new ModelAndView("customerportal");
    }

    @GetMapping("/login")
    public ModelAndView login()
    {
        //session.setAttribute("name",name);
        ModelAndView m = new ModelAndView("loginportal");
        return m;
    }

    @GetMapping("/admin")
    public ModelAndView admin()
    {
        ModelAndView m =new ModelAndView("adminportal");
        return m;
    }

    @GetMapping("/alogin")
    public ModelAndView alogin()
    {
        ModelAndView m = new ModelAndView("adminlogin");
        return m;
    }
    @GetMapping("/mlogin")
    public ModelAndView mlogin()
    {
        ModelAndView m = new ModelAndView("managerlogin");
        return m;
    }
    @GetMapping("/clogin")
    public ModelAndView clogin()
    {
        ModelAndView m = new ModelAndView("customerlogin");
        return m;
    }

    @PostMapping("/adminloginServlet")
    public ModelAndView adminAuthentication(@RequestParam String email,@RequestParam String password)
    {
        if(email.equals("gana@gmail.com") && password.equals("143143"))
        {
            ModelAndView m = new ModelAndView("adminportal");
            return m;
        }
        return new ModelAndView("index");
    }

    @PostMapping("/managerloginServlet")
    public ModelAndView ManagerAuthentication(@RequestParam String email,@RequestParam String password)
    {
        if(email.equals("manager@gmail.com") && password.equals("123456"))
        {
            ModelAndView m = new ModelAndView("managerportal");
            return m;
        }
        return new ModelAndView("index");
    }

    @GetMapping("/myregister")
    public ModelAndView myregister()
    {
        return new ModelAndView("registerportal");
    }


//    @GetMapping("/hi")
//    public String index(Model model)
//    {
//        return "index";
//    }

//    @GetMapping("/continueLogin")
//    public ModelAndView continuelogin()
//    {
//        return new ModelAndView("customerlogin");
//    }
}
