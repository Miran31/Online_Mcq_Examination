import Database.Database;
import model.Question;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class QuestionSet {
    public List<Question> getQuestion() throws ClassNotFoundException, SQLException {
        List<Question> questionList = new ArrayList<>();
        Statement statement = Database.getConnection().createStatement();
        ResultSet rs = statement.executeQuery("select * from Question");
        while(rs.next()){
            int id = rs.getInt("Serial_No");
            String Question = rs.getString("Question");
            String OptionA = rs.getString("Option_A");
            String OptionB = rs.getString("Option_B");
            String OptionC = rs.getString("Option_C");
            String OptionD = rs.getString("Option_D");
            String Correctans = rs.getString("Correct_Ans");
            Question question = new Question(id,Question,OptionA,OptionB,OptionC,OptionD,Correctans);
            questionList.add(question);
        }
        return questionList;
    }
    public List<Question> getExamQues(int n) throws SQLException, ClassNotFoundException {
        List<Question> questionset = getQuestion();
        List<Question> examQues = new ArrayList<>();
        if(n<=questionset.size()){
            while (n!=0){
                int len = questionset.size();
                int i = (int) (Math.random()*len);
                examQues.add(questionset.get(i));
                questionset.remove(i);
                n--;
            }
        }
        return examQues;
    }
}