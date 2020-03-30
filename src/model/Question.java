package model;

public class Question {
    private int id;
    private String ques,a,b,c,d,cans;

    public Question(int id,String ques, String a, String b, String c, String d, String cans) {
        this.id = id;
        this.ques = ques;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.cans = cans;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQues() {
        return ques;
    }

    public void setQues(String ques) {
        this.ques = ques;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public String getD() {
        return d;
    }

    public void setD(String d) {
        this.d = d;
    }

    public String getCans() {
        return cans;
    }

    public void setCans(String cans) {
        this.cans = cans;
    }

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", ques='" + ques + '\'' +
                ", a='" + a + '\'' +
                ", b='" + b + '\'' +
                ", c='" + c + '\'' +
                ", d='" + d + '\'' +
                ", cans='" + cans + '\'' +
                '}';
    }
}
