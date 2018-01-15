public class Leadtrigger{
public static void emaillead(List<Lead>leads){
List<String>currentemailleads = new List<String>{};
String lemail;
for(Lead l1:leads){
 lemail = l1.email;
currentemailleads.add(lemail);
Messaging.singleEmailMessage email = new Messaging.singleEmailMessage();
email.setSubject('Hello');
email.setplainTextBody('new lead created');
email.setToAddresses(currentemailleads);
Messaging.SendEmailResult[] result =  Messaging.sendEmail(new Messaging.singleEmailMessage[]{email});
}


 }


}