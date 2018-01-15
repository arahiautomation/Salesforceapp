public class Accountcity {
    public void acccity( Contact c){
        for(Account a:[select Name ,BillingCity from Account where BillingCity = 'Texas']){
           c =[select  id,Name,MailingCity from Contact where id  = :a.Id];
        c.MailingCity = a.BillingCity;
       
        }   
        
    }
}