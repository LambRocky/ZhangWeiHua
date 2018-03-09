package com.accp.controller;


import com.accp.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller("loginController")

public class LoginController {
    @RequestMapping("/index")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/sys/login")
    public String doLogin(User user, HttpSession session){
        //session.setAttribute("user",user);
        return "jsps/frame";
    }
}
