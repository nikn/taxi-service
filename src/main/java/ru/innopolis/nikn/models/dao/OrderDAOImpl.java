package ru.innopolis.nikn.models.dao;

import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.Order;

import javax.persistence.EntityNotFoundException;
import java.util.List;

/**
 * Created by Nikolay on 09.12.2016.
 */
@Component
public class OrderDAOImpl extends BaseDAOImpl implements OrderDAO{

    @Override
    public List<Order> getAll() {
        return entityManager.createQuery("Select a From Order a",
                Order.class).getResultList();
    }

}
