package ru.innopolis.nikn.models.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.dao.OrderDAO;
import ru.innopolis.nikn.models.dao.UserDAO;
import ru.innopolis.nikn.models.entities.Order;
import ru.innopolis.nikn.models.entities.OrderStatus;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Map;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Component
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private OrderDAO orderDAO;
    @Autowired
    private UserDAO userDAO;

    @Override
    public ModelAndView getOrder(HttpSession session, int orderId) {
        return null;
    }

    @Override
    public ModelAndView getOrderCreate(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("/orders/");

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
    public ModelAndView postOrderCreate(HttpSession session, Map<String, String> requestParams) {
        String message = null;
        ModelAndView modelAndView;
        try {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            requestParams.put("user_id", ((Long) session.getAttribute("user_id")).toString() );
            requestParams.put("status_id", "1");
            requestParams.put("distance", "23");
            requestParams.put("create_time", timestamp.toString());
            requestParams.put("modify_time", timestamp.toString());
            Order order = buildOrder(requestParams);
            orderDAO.create(order);
            return new ModelAndView("redirect:/order/all");
        } catch (Exception e) {
            message = e.getMessage();
        }
        modelAndView = new ModelAndView("order-create");
        modelAndView.addObject("message", message);
        return modelAndView;
    }

    @Override
    public ModelAndView postOrderEdit(HttpSession session, Map<String, String> requestParams, int orderId) {
        return null;
    }

    @Override
    public Order buildOrder(Map<String, String> params) throws Exception {
        Order order = new Order();
        //order.setId(Integer.parseInt(params.get("id")));
        order.setUser(userDAO.findById(Integer.parseInt(params.get("user_id"))));
        OrderStatus orderStatus = new OrderStatus();
        orderStatus.setId(Integer.parseInt(params.get("status_id")));
        order.setOrderStatus(orderStatus);
        order.setSrcLat(Double.parseDouble(params.get("src_lat")));
        order.setSrcLong(Double.parseDouble(params.get("src_long")));
        order.setDstLat(Double.parseDouble(params.get("dst_lat")));
        order.setDstLong(Double.parseDouble(params.get("dst_long")));
        order.setDistance(Double.parseDouble(params.get("distance")));
        order.setCreateTime(Timestamp.valueOf(params.get("create_time")));
        order.setModifyTime(Timestamp.valueOf(params.get("modify_time")));
        return order;
    }
}
