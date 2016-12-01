package ru.innopolis.nikn.models.dao.factory;

import ru.innopolis.nikn.models.dao.UserDAO;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Nikolay on 22.11.2016.
 */
public interface DAOFactory {

    public UserDAO getUserDAO();

    public Connection createConnection() throws SQLException;

    public void closeConnection(Connection connection);


}
