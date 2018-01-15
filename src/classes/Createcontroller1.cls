public class Createcontroller1 {
   public List<wrap>listwrap {get;set;}
 
    public Createcontroller1(){
       listwrap = new List<wrap>();
        List<Account>acclist = [select Name,Phone,Fax,BillingCity from Account ];
        
        for(Account a :acclist){
           listwrap.add(new wrap(a)); 
        } 
       
        system.debug(listwrap);
    }
    
    public class wrap{
        public Account acc{get;set;}
        Public Boolean selected{get;set;} 
       
        
        public wrap(Account a){
         acc=a;
        
         selected = false;   
        }
       
    }   
}