package ru.innopolis.nikn.models.dao;

import ma.glasnost.orika.MapperFacade;
import ru.innopolis.nikn.models.entities.BaseEntity;
import ru.innopolis.nikn.utils.BaseMapper;
import ru.innopolis.nikn.utils.EntityManagerHolder;

import javax.persistence.EntityManager;
import java.util.List;

/**
 * Created by Nikolay on 09.12.2016.
 */
public interface BaseDAO{

    EntityManager entityManager = EntityManagerHolder.getEntityManager();
    MapperFacade mapper = BaseMapper.MAPPER_FACTORY.getMapperFacade();

    boolean add(BaseEntity entity);
    boolean merge(BaseEntity entity);
    boolean delete(long id, Class<? extends BaseEntity> clazz);
    List<? extends BaseEntity> getAll();
    BaseEntity getById(long id, Class<? extends BaseEntity> clazz);

}
