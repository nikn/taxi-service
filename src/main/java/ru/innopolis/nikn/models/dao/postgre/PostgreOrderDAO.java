package ru.innopolis.nikn.models.dao.postgre;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.innopolis.nikn.models.dao.OrderDAO;
import ru.innopolis.nikn.models.dao.UserDAO;
import ru.innopolis.nikn.models.dao.factory.DAOFactory;
import ru.innopolis.nikn.models.entities.Order;
import ru.innopolis.nikn.models.entities.OrderStatus;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Component
public class PostgreOrderDAO implements OrderDAO{

    @Autowired
    UserDAO userDAO;

    private static final String PREPARED_FIND_ALL = "select A.*, B.name, B.class_name from orders as A " +
            "INNER JOIN order_status as B ON A.status_id = B.id " +
            "WHERE A.user_id = (?)";

    @Autowired
    private DAOFactory daoFactory;

    private Order buildOrder(ResultSet resultSet) throws Exception {
        Order order = new Order();
        order.setId(resultSet.getInt("id"));
        order.setUser(userDAO.findById(resultSet.getInt("user_id")));
        order.setOrderStatus(buildOrderStatus(resultSet));
        order.setSrcLat(resultSet.getDouble("src_latitude"));
        order.setSrcLong(resultSet.getDouble("src_longitude"));
        order.setDstLat(resultSet.getDouble("dst_latitude"));
        order.setDstLong(resultSet.getDouble("dst_longitude"));
        order.setDistance(resultSet.getDouble("distance"));
        order.setCreateTime(resultSet.getTimestamp("create_time"));
        order.setModifyTime(resultSet.getTimestamp("modify_time"));
        return order;
    }

    private OrderStatus buildOrderStatus(ResultSet resultSet) throws SQLException {
        OrderStatus orderStatus = new OrderStatus();
        orderStatus.setName(resultSet.getString("name"));
        orderStatus.setClassName(resultSet.getString("class_name"));
        return orderStatus;
    }

    @Override
    public List<Order> findAll(int userId) {
        List<Order> orders = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = daoFactory.createConnection();
            preparedStatement = connection.prepareStatement(PREPARED_FIND_ALL);
            preparedStatement.setInt(1, userId);
            preparedStatement.execute();
            ResultSet rs = preparedStatement.getResultSet();
            while(rs.next()) {
                orders.add(buildOrder(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            daoFactory.closeConnection(connection);
        }
        return orders;
    }

}
