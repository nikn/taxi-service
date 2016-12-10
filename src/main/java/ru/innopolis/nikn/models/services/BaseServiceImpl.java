package ru.innopolis.nikn.models.services;

import ma.glasnost.orika.MapperFacade;
import ru.innopolis.nikn.utils.BaseMapper;

/**
 * Created by Nikolay on 10.12.2016.
 */
public abstract class BaseServiceImpl {
    protected MapperFacade mapper = BaseMapper.MAPPER_FACTORY.getMapperFacade();
}
