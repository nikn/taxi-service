package ru.innopolis.nikn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.services.IUserService;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 26.11.2016.
 */
@Controller
public class UserController {

    @Autowired
    IUserService userService;

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

    @PostMapping(value = "/login")
    public ModelAndView postLoginForm(
            HttpSession session,
            @RequestParam Map<String,String> requestParams
    ){
        ModelAndView model = userService.loginAction(session, requestParams);
        return model;
    }

    @GetMapping(value = "/logout")
    public String getLogout(HttpSession session) {
        return userService.logoutAction(session);
    }

    @GetMapping(value = "/register")
    public ModelAndView getRegisterForm() {
        ModelAndView model = new ModelAndView("register");
        model.addObject("title", "Register form.");
        return model;
    }

    @PostMapping(value = "/register")
    public ModelAndView postRegisterForm(
            HttpSession session,
            @RequestParam Map<String,String> requestParams
    ){
        ModelAndView model = userService.registerAction(session, requestParams);
        return model;
    }

    @GetMapping(value = "/profile")
    public ModelAndView getProfile(HttpSession session) {
        ModelAndView model = userService.getProfile(session);
        model.addObject("title", "Profile page.");
        return model;
    }

}
