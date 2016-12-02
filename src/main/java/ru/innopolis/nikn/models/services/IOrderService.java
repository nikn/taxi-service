package ru.innopolis.nikn.models.services;

import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.entities.Order;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 30.11.2016.
 */
public interface IOrderService {

    public ModelAndView getOrder(HttpSession session, int orderId);
    public ModelAndView getOrderCreate(HttpSession session);
    public ModelAndView getOrderEdit(HttpSession session, int orderId);
    public ModelAndView getOrderDelete(HttpSession session, int orderId);
    public ModelAndView getOrderAll(HttpSession session);
    public ModelAndView postOrderCreate(HttpSession session, Map<String, String> requestParams);
    public ModelAndView postOrderEdit(HttpSession session, Map<String, String> requestParams, int orderId);

    public Order buildOrder(Map<String, String> params) throws Exception;

}
