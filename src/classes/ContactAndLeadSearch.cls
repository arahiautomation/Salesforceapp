public class ContactAndLeadSearch {
    public static List<List<sObject>>searchLeadAndContact(String searchword){
       List<List<sObject>> searchconlead = (List<List<sObject>>) [Find :searchword In All Fields Returning Lead(ID,Name,LastName),Contact(LastName,FirstName)];  
       
        return searchconlead;
    }
}