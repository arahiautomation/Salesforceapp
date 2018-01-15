public class ContactSearch1{
public List<Contact>searchForContacts( String lastName,String mailingpostalcode){
List<Contact>conlist = [select ID,Name,LastName,MailingPostalCode from Contact where LastName = :lastName
                         And MailingPostalCode = :mailingpostalcode];
return conlist;
}
}