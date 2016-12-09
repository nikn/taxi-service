package ru.innopolis.nikn.models.services;

import ma.glasnost.orika.MapperFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.entities.BaseEntity;
import ru.innopolis.nikn.models.models.StatusModel;
import ru.innopolis.nikn.models.dao.StatusDAO;
import ru.innopolis.nikn.utils.BaseMapper;
import ru.innopolis.nikn.models.entities.Status;

import java.util.LinkedList;
import java.util.List;

@Component
public class StatusServiceImpl implements StatusService{
    @Autowired
    StatusDAO statusDAO;
    private MapperFacade mapper = BaseMapper.MAPPER_FACTORY.getMapperFacade();

    @Override
    public String getAddStatus(StatusModel statusModel) {

        Status status = mapper.map(statusModel, Status.class);
        statusDAO.add(status);
        return "redirect:/status";
    }

    @Override
    public List<StatusModel> getAllStatus() {
        List<StatusModel> statusModels = new LinkedList<>();
        for(BaseEntity baseEntity: statusDAO.getAll()) {
            statusModels.add(mapper.map((Status) baseEntity, StatusModel.class));
        }
        return statusModels;
    }

    @Override
    public boolean deleteStatus(long id) {
        return statusDAO.delete(id, Status.class);
    }

    @Override
    public StatusModel getById(long id) {
        return mapper.map(statusDAO.getById(id, Status.class), StatusModel.class);
    }

}
