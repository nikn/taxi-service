package ru.innopolis.nikn.models.dao;

import ru.innopolis.nikn.models.entities.Order;

import java.util.List;

/**
 * Created by Nikolay on 30.11.2016.
 */
public interface OrderDAO {

    public List<Order> findAll(int userId);

    public boolean create(Order order);

}
