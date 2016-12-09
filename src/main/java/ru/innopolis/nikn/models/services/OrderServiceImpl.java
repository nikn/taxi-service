package ru.innopolis.nikn.models.services;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Component
public class OrderServiceImpl implements IOrderService {


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
       return null;
    }

    @Override
    public ModelAndView postOrderCreate(HttpSession session, Map<String, String> requestParams) {
       return null;
    }

    @Override
    public ModelAndView postOrderEdit(HttpSession session, Map<String, String> requestParams, int orderId) {
        return null;
    }
}
