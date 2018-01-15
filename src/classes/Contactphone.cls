public class Contactphone {
  public static Account a;
  public static  Contact c = new Contact();
    public  static void conphone(List<Contact>conlst){
        ID aid = c.accountid;
        Account a =[select id ,Name,Phone from Account where id =:aid];
        for(Contact c:conlst){
          c.Phone = a.Phone;  
        }
    }
}