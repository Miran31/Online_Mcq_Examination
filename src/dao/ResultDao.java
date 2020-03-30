package dao;

import Database.Database;
import model.Result;
import model.User;
import org.w3c.dom.ls.LSException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResultDao {
    private Connection connection;
    private ResultSet rs;
    public ResultDao(){
        if (connection== null){
            try{
                connection = Database.getConnection();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
    public List<Result> allResult(String email){
        List<Result> results = new ArrayList<>();
        String sql = "select * from result where Email = ?";
        try {
            PreparedStatement ps = Database.getConnection().prepareStatement(sql);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                results.add(new Result(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6),rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("# all data from database "+results.toString());
        return results;
    }

}
