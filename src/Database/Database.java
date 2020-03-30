package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private static String url = "jdbc:mysql://localhost:3306/Online_mock_test";
    private static String username = "root";
    private static  String password = "ar@miran";
    public  static Connection getConnection() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = null;
        try {
            con = DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("database connected");
        return con;
    }

}
