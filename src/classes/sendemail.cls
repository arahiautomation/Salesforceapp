public class sendemail{
 public String subject{get;set;}
 public String emailbody{get;set;}
List<String>emails = new  List<String>{'ravi.bojjas@gmail.com'};
List<String>BccAddress = new List<String>{'ravi.bojjas@gmail.com','sarithabingi9@gmail.com'};

public pageReference send(){
Messaging.singleEmailmessage  email = new Messaging.singleemailMessage(); 
email.setSubject(subject);
email.setplaintextbody(emailbody);
email.setToAddresses(emails);
email.setBccAddresses(emails);
Messaging.sendEmailResult[]r  = Messaging.sendEmail(new Messaging.singleemailMessage[]{email});
return null;
}

}