import Database.Database;
import model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class service {
    Connection connection;
    public List<User> UserData(String tableName){
        List<User> userList = new ArrayList<>();
        try {
            Statement statement = Database.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from "+tableName);
            while(rs.next()){
                User user = new User(rs.getString("firstname"),rs.getString("lastname"),rs.getString("email"),rs.getString("password"));
                userList.add(user);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return userList;
    }
}
