package dao;

import Database.Database;
import model.Question;
import model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QuestionDao {
    private Connection connection;
    private ResultSet rs;

    public QuestionDao() {
        if(connection==null){
            try {
                connection = Database.getConnection();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    public List<Question> findAllQuestion() {
        return fetchQuestion("select * from question");
    }


    private List<Question> fetchQuestion(String sql)
    {
        List<Question> questions = new ArrayList<>();
        try{
            rs = connection.createStatement().executeQuery(sql);
            while (rs.next()){
                questions.add(new Question(rs.getInt(1),rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return questions;
    }
}
