package ru.innopolis.nikn.models.dao;

import ru.innopolis.nikn.models.entities.BaseEntity;

import javax.persistence.EntityNotFoundException;
import java.util.List;

/**
 * Created by Nikolay on 09.12.2016.
 */
public abstract class BaseDAOImpl implements BaseDAO{
    @Override
    public boolean add(BaseEntity entity) {
        entityManager.getTransaction().begin();
        entityManager.merge(entity);
        entityManager.getTransaction().commit();
        return true;
    }

    @Override
    public boolean delete(long id, Class clazz) {
        entityManager.getTransaction().begin();
        try {
            entityManager.remove(getById(id, clazz));
        }
        catch (EntityNotFoundException ex) {
            return false;
        }
        finally {
            entityManager.getTransaction().commit();
        }

        return true;
    }

    @Override
    public BaseEntity getById(long id, Class<? extends BaseEntity> clazz) {
        entityManager.getTransaction().begin();
        try {
            return entityManager.getReference(clazz, id);
        }
        catch (EntityNotFoundException ex) {
            return null;
        }
        finally {
            entityManager.getTransaction().commit();
        }
    }
}
