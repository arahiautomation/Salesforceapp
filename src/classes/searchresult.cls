public class searchresult {

    

List<account>results ;
 String city;     
 public String getcity(){
 return city;
 }
 public String setcity(string BillingCity){
 city = BillingCity;
 return null;
 }   
 public List<Account> getresults(){
 return results;
 }   
   public pagereference dosearch(){
   results = [select Name,phone,BillingCity from Account where billingcity = :city] ;
   return null;
   }    
}