package ru.innopolis.nikn.models.dao;

import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.BaseEntity;
import ru.innopolis.nikn.models.entities.Profile;

import java.util.List;

/**
 * Created by Nikolay on 10.12.2016.
 */
@Component
public class ProfileDAOImpl extends BaseDAOImpl implements ProfileDAO{
    @Override
    public List<? extends BaseEntity> getAll() {
        return entityManager.createQuery("Select a From Profile a",
                Profile.class).getResultList();
    }
}
