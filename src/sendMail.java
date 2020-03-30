import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class sendMail {
    public static final int TEXT_MAIL = 101, HTML_MAIL = 102;

    public static void send(String to, String subject, String msg ,int type){
        final String user="armiran46@gmail.com";
        final String pass="12345ar@miran";

        Properties props=new Properties();

        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable",true);
        props.put("mail.smtp.port",587);
        Session session=Session.getDefaultInstance(props,new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(user,pass);
            }

        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(javax.mail.Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(subject);
            message.setText(msg);
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException e) {
            e.printStackTrace();

        }
    }
}