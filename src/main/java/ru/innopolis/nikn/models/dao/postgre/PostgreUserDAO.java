package ru.innopolis.nikn.models.dao.postgre;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.innopolis.nikn.excaptions.ConnectionException;
import ru.innopolis.nikn.excaptions.UserException;
import ru.innopolis.nikn.models.dao.UserDAO;
import ru.innopolis.nikn.models.dao.factory.DAOFactory;
import ru.innopolis.nikn.models.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Nikolay on 22.11.2016.
 */
@Component
public class PostgreUserDAO implements UserDAO {

    private static final String PREPARED_FIND_QUERY = "select * from users where username = (?) AND pwd = (?) AND lock = FALSE";
    private static final String PREPARED_FIND_BY_ID_QUERY = "select * from users where id = (?)  AND lock = FALSE";
    private static final String PREPARED_INSERT = "insert into users (username, pwd, first_name, last_name, email) values (?, ?, ?, ?, ?);";

    @Autowired
    private DAOFactory daoFactory;

    private User buildUser(ResultSet rs) throws SQLException {
        if(rs.next()) {
            User.Builder builder = new User.Builder();
            builder.withId(rs.getInt("id"))
                    .withUsername(rs.getString("username"))
                    .withEmail(rs.getString("email"))
                    .withFirstName(rs.getString("first_name"))
                    .withLastName(rs.getString("last_name"));
            return new User(builder);
        }
        return null;
    }

    @Override
    public User find(String username, String pwd) throws Exception {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = daoFactory.createConnection();
            preparedStatement = connection.prepareStatement(PREPARED_FIND_QUERY);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, pwd);
            preparedStatement.executeQuery();
            ResultSet rs = preparedStatement.getResultSet();
            User user = buildUser(rs);
            if(user != null) {
                return user;
            }
        } catch (Exception e) {
            throw e;
        }
        finally {
            closePreparedStatement(preparedStatement);
            daoFactory.closeConnection(connection);
        }
        throw new UserException(UserException.LOGIN_ERROR_MESSAGE);
    }

    @Override
    public User findById(int id) throws Exception {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = daoFactory.createConnection();
            preparedStatement = connection.prepareStatement(PREPARED_FIND_BY_ID_QUERY);
            preparedStatement.setInt(1, id);
            preparedStatement.executeQuery();
            ResultSet rs = preparedStatement.getResultSet();
            User user = buildUser(rs);
            if(user != null) {
                return user;
            }
        } catch (Exception e) {
            throw e;
        }
        finally {
            closePreparedStatement(preparedStatement);
            daoFactory.closeConnection(connection);
        }
        throw new UserException(UserException.LOGIN_ERROR_MESSAGE);
    }

    @Override
    public boolean createUser(User user) throws Exception {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = daoFactory.createConnection();
            preparedStatement = connection.prepareStatement(PREPARED_INSERT);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirstName());
            preparedStatement.setString(4, user.getLastName());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.executeUpdate();
            return true;
        } catch (Exception e) {
            throw e;
        }
        finally {
            closePreparedStatement(preparedStatement);
            daoFactory.closeConnection(connection);
        }
    }


    private void closePreparedStatement(PreparedStatement preparedStatement) {
        if(preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
