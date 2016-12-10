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
        try{
            entityManager.getTransaction().begin();
            entityManager.persist(entity);
        }
        finally{
            entityManager.getTransaction().commit();
        }
        return true;
    }

    @Override
    public boolean merge(BaseEntity entity) {
        try{
            entityManager.getTransaction().begin();
            entityManager.merge(entity);
        }
        finally{
            entityManager.getTransaction().commit();
        }
        return true;
    }

    @Override
    public boolean delete(long id, Class<? extends BaseEntity> clazz) {
        try {
            BaseEntity baseEntity = getById(id, clazz);
            entityManager.getTransaction().begin();
            entityManager.remove(baseEntity);
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
        try {
            entityManager.getTransaction().begin();
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
