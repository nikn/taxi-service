package ru.innopolis.nikn.models.services;

import ru.innopolis.nikn.models.models.StatusModel;

import java.util.List;

/**
 * Created by Nikolay on 05.12.2016.
 */
public interface StatusService {


    String getAddStatus(StatusModel statusModel);

    List<StatusModel> getAllStatus();

    boolean deleteStatus(long id);

    StatusModel getById(long id);

}
