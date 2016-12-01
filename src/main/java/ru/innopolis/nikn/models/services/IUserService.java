package ru.innopolis.nikn.models.services;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 28.11.2016.
 */
public interface IUserService {

    public ModelAndView loginAction(HttpSession session, Map<String,String> requestParams);

    public ModelAndView registerAction(HttpSession session, Map<String,String> requestParams);

    public String logoutAction(HttpSession session);

    public ModelAndView getProfile(HttpSession session);
}
