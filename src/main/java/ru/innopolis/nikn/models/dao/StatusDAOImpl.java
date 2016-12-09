package ru.innopolis.nikn.models.dao;

import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.Status;

import javax.persistence.EntityNotFoundException;
import java.util.List;

/**
 * Created by Nikolay on 05.12.2016.
 */
@Component
public class StatusDAOImpl extends BaseDAOImpl implements StatusDAO{

    @Override
    public List<Status> getAll() {
        return entityManager.createQuery("Select a From Status a",
                Status.class).getResultList();
    }

}
