public class ContactSearch {
    List<Contact>conlist = [select ID,Name,LastName,MailingPostalCode from Contact];
    public static List<Contact>searchForContacts(){
        ContactSearch consearch = new ContactSearch();
        
      return(consearch.conlist);
      
    }
}