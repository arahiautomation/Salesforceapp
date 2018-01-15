public class searchaccount { 
    public String getCity() {
        return null;
    }


   
 public  static List<wrapinner>listwi{get;set;}
    public   searchaccount(){ 
       }   
      
          
    
    public class wrapinner{
        public Account acc{get;set;}
        public boolean selected{get;set;}
       
    
    public wrapinner(Account a){
    acc= a;
    selected =false;
   
    }
   public String city{get;set;}
   public void  dosearch(String city){
  
   listwi = new List<wrapinner>();
   List<Account>acc = [select name,phone,Billingcity from Account where Billingcity = :city];
   for(Account a :acc){
   
   listwi.add(new wrapinner(a));
   }
  
   }
}

}