package ru.innopolis.nikn.models.dao;

import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.BaseEntity;
import ru.innopolis.nikn.models.entities.User;

import java.util.List;

/**
 * Created by Nikolay on 10.12.2016.
 */
@Component
public class UserDAOImpl extends BaseDAOImpl implements UserDAO{
    @Override
    public List<? extends BaseEntity> getAll() {
        return entityManager.createQuery("Select a From User a",
                User.class).getResultList();
    }
}
