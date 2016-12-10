package ru.innopolis.nikn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.models.ProfileModel;
import ru.innopolis.nikn.models.models.UserModel;
import ru.innopolis.nikn.models.services.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Nikolay on 26.11.2016.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

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
        UserModel userModel = new UserModel();
        model.addObject("title", "Register form.");
        model.addObject("user", new UserModel());
        model.addObject("profile", new ProfileModel());
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

    @PostMapping(value = "/register")
    public String postRegisterForm(UserModel userModel, ProfileModel profileModel){
        userService.registerAction(userModel, profileModel);
        return "redirect:/login";
    }

}
