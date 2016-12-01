package ru.innopolis.nikn.models.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.dao.OrderDAO;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Component
public class OrderServiceImpl implements IOrderService{

    @Autowired
    private OrderDAO orderDAO;

    @Override
    public ModelAndView getOrder(HttpSession session, int orderId) {
        return null;
    }

    @Override
    public ModelAndView getOrderCreate(HttpSession session) {
        return null;
    }

    @Override
    public ModelAndView getOrderEdit(HttpSession session, int orderId) {
        return null;
    }

    @Override
    public ModelAndView getOrderDelete(HttpSession session, int orderId) {
        return null;
    }

    @Override
    public ModelAndView getOrderAll(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("order-all");
        int userId = ((Long) session.getAttribute("user_id")).intValue();
        modelAndView.addObject("orders", orderDAO.findAll(userId));
        return modelAndView;
    }

    @Override
    public ModelAndView postOrderCreate(HttpSession session, Map<String, String> requestParams, int orderId) {
        return null;
    }

    @Override
    public ModelAndView postOrderEdit(HttpSession session, Map<String, String> requestParams, int orderId) {
        return null;
    }
}
