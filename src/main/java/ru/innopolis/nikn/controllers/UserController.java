package ru.innopolis.nikn.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Nikolay on 26.11.2016.
 */
@Controller
public class UserController {

    @GetMapping(value = "/")
    public ModelAndView mainPage() {
        ModelAndView model = new ModelAndView("index");
        model.addObject("title", "Main page.");
        return model;
    }

    @GetMapping(value = "/login")
    public ModelAndView getLoginForm() {
        ModelAndView model = new ModelAndView("login");
        model.addObject("title", "Login form.");
        return model;
    }

    @GetMapping(value = "/register")
    public ModelAndView getRegisterForm() {
        ModelAndView model = new ModelAndView("register");
        model.addObject("title", "Register form.");
        return model;
    }

    @GetMapping(value="/logout")
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

//    @PostMapping(value = "/register")
//    public ModelAndView postRegisterForm(
//            HttpSession session,
//            @RequestParam Map<String,String> requestParams
//    ){
//        ModelAndView model = userService.registerAction(session, requestParams);
//        return model;
//    }

}
