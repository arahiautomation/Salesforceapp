public class Accountselectcontroller {

   public List<Account>selectedaccounts{get;set;}

    public List <WrapAccount> wrapaccountlist{get;set;} 
    
    public Accountselectcontroller (){
        if(wrapaccountlist == null){
          wrapaccountlist = new List <WrapAccount> ();
            List<Account>acclist = [select id ,name,phone,Billingstate from Account];
            for(Account a :acclist){
                wrapaccountlist.add(new WrapAccount(a));
            }
        }
       system.debug(wrapaccountlist); 
    }
    public void selectedaccounts(){
 selectedaccounts = new List<Account>() ;
        for(WrapAccount w :Wrapaccountlist){
            if(w.selected == true){
              selectedaccounts.add(w.acc);  
                
            }
            
        }  
          
        
    }
    public class WrapAccount{
        public Account acc{get;set;}
            public Boolean selected {get;set;}
      
        
        public WrapAccount(Account a){
            acc = a;
            selected = false;
            
        }
        
    }
}