package ru.innopolis.nikn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.services.IOrderService;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Controller
public class OrderController {
    @Autowired
    IOrderService orderService;

    /**
     * Get order page view for order with orderId.
     * @param session HttpSession
     * @param orderId int @PathVariable
     * @return ModelAndView
     */
    @GetMapping(path = "/order/{orderId}")
    public ModelAndView getOrder(HttpSession session , @PathVariable int orderId) {
        return null;
    }

    /**
     * Get order page view for create order.
     * @param session HttpSession
     * @return ModelAndView
     */
    @GetMapping(path = "/order/create")
    public ModelAndView getOrderCreate(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("order-create");
        return modelAndView;
    }

    /**
     * Get order page view for map page.
     * @param session HttpSession
     * @return ModelAndView
     */
    @GetMapping(path = "/order/map")
    public ModelAndView getOrderMap(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("map");
        return modelAndView;
    }

    @GetMapping(path = "/order/edit/{orderId}")
    public ModelAndView getOrderEdit(HttpSession session, @PathVariable int orderId) {
        return null;
    }

    @GetMapping(path = "/order/delete/{orderId}")
    public ModelAndView getOrderDelete(HttpSession session, @PathVariable int orderId) {
        return null;
    }

    @GetMapping(path = "/order/all")
    public ModelAndView getOrderAll(HttpSession session) {
        return orderService.getOrderAll(session);
    }

    @PostMapping(path = "/order/create")
    public ModelAndView postOrderCreate(HttpSession session, @RequestParam Map<String,String> requestParams) {
        return orderService.postOrderCreate(session, requestParams);
    }

    @PostMapping(path = "/order/edit/{orderId}")
    public ModelAndView postOrderEdit(
            HttpSession session,  @PathVariable int orderId,
            @RequestParam Map<String,String> requestParams)
    {
        return null;
    }

}
