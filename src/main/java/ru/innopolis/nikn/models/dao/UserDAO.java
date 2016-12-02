package ru.innopolis.nikn.models.dao;

import ru.innopolis.nikn.models.entities.User;

import java.util.Map;

/**
 * Created by Nikolay on 22.11.2016.
 */
public interface UserDAO {

    public User find(String name, String pwd) throws Exception;
    public User findById(int id) throws Exception;
    public boolean createUser(User user) throws Exception;

    public User buildUser(Map<String, String> params);

   /* public boolean createUser(User user) throws ConnectionException, SQLException, UserException;
    public boolean updateUser(User user);
    public boolean deleteUser(User user);
    public User findByName(String name);
    public User findById(int id) throws Exception;
    public User find(String name, String pwd) throws Exception;
    */

}
