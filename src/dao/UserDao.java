package dao;

import Database.Database;
import model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    private Connection connection;
    private ResultSet rs;

    public UserDao() {
        if(connection==null){
            try {
                connection = Database.getConnection();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    public List<User> findAllUser() {
      return fetchUser("select * from information");
    }


    private List<User> fetchUser(String sql)
    {
        List<User> users = new ArrayList<>();
        try{
            rs = connection.createStatement().executeQuery(sql);
            while (rs.next()){
                users.add(new User(rs.getString(1), rs.getString(2),rs.getString(3), rs.getString(4)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("# "+users.toString());
        return users;
    }
}
