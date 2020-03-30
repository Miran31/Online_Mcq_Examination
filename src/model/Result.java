package model;
public class Result {
    private String time;
    private String firstName;
    private String lastName;
    private String email;
    private int correctAns;
    private int wrongAns;
    private int noAns;

    public Result(String time, String firstName, String lastName, String email, int correctAns, int wrongAns, int noAns) {
        this.time = time;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.correctAns = correctAns;
        this.wrongAns = wrongAns;
        this.noAns = noAns;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCorrectAns() {
        return correctAns;
    }

    public void setCorrectAns(int correctAns) {
        this.correctAns = correctAns;
    }

    public int getWrongAns() {
        return wrongAns;
    }

    public void setWrongAns(int wrongAns) {
        this.wrongAns = wrongAns;
    }

    public int getNoAns() {
        return noAns;
    }

    public void setNoAns(int noAns) {
        this.noAns = noAns;
    }

    @Override
    public String toString() {
        return "Result{" +
                "time='" + time + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", correctAns=" + correctAns +
                ", wrongAns=" + wrongAns +
                ", noAns=" + noAns +
                '}';
    }
}
