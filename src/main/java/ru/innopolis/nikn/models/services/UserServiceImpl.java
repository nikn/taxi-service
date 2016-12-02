package ru.innopolis.nikn.models.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.dao.UserDAO;
import ru.innopolis.nikn.models.entities.User;
import ru.innopolis.nikn.utils.CryptUtil;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 28.11.2016.
 */
@Component
public class UserServiceImpl implements IUserService{

    @Autowired
    UserDAO userDAO;

    @Override
    public ModelAndView loginAction(HttpSession session, Map<String,String> requestParams) {
        String message = null;
        ModelAndView modelAndView = null;
        try {
            User user = userDAO.find(requestParams.get("username"), CryptUtil.cript(requestParams.get("password")));
            session.setAttribute("user_id", user.getId());
            session.setAttribute("username", user.getUsername());
            modelAndView = new ModelAndView("redirect:/profile");
            modelAndView.addObject("username", user.getUsername());
            return modelAndView;
        } catch (Exception e) {
            message = e.getMessage();
        }
        modelAndView = new ModelAndView("login");
        modelAndView.addObject("message", message);
        return modelAndView;
    }

    @Override
    public ModelAndView registerAction(HttpSession session, Map<String,String> requestParams) {
        String message = null;
        ModelAndView modelAndView = null;
        try {
            User.Builder builder = new User.Builder();
            builder.withUsername(requestParams.get("username"))
                    .withFirstName(requestParams.get("first_name"))
                    .withLastName(requestParams.get("last_name"))
                    .withEmail(requestParams.get("email"))
                    .withPassword(CryptUtil.cript(requestParams.get("password")));
            User user = new User(builder);
            if(userDAO.createUser(user)){
                modelAndView = loginAction(session, requestParams);
                return modelAndView;
            }

        } catch (Exception e) {
            message = e.getMessage();
        }
        modelAndView = new ModelAndView("register");
        modelAndView.addObject("message", message);
        return modelAndView;
    }

    @Override
    public String logoutAction(HttpSession session) {
        session.invalidate();
        return "redirect:/profile";
    }

    @Override
    public ModelAndView getProfile(HttpSession session) {
        String message = null;
        ModelAndView modelAndView = null;
        try {
            int id = ((Long) session.getAttribute("user_id")).intValue();
            User user = userDAO.findById(id);
            modelAndView = new ModelAndView("profile");
            modelAndView.addObject("user", user);
            return modelAndView;
        } catch (Exception e) {
            message = e.getMessage();
        }
        modelAndView = new ModelAndView("login");
        modelAndView.addObject("message", message);
        return modelAndView;
    }
}
