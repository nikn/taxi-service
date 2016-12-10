package ru.innopolis.nikn.models.dao;

import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.BaseEntity;

import java.util.List;

/**
 * Created by Nikolay on 10.12.2016.
 */
@Component
public class AuthorityDAOImpl extends BaseDAOImpl implements AuthorityDAO{
    @Override
    public List<? extends BaseEntity> getAll() {
        return null;
    }
}
