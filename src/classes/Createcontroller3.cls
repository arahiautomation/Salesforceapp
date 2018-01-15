public class Createcontroller3 {
    public List<wrapper>wrplst {get;set;}
    public String city{get;set;}
   
    public  void getsearchstring(){
       
      wrplst =  new List<wrapper>();  
       
      List<Account>acclist = [select Name,Phone,BillingCity from Account where BillingCity = :city];
        if(acclist.size()==0){
         ApexPages.addmessage(new ApexPages.Message(ApexPages.Severity.INFO,'No Accounts Found with entered City'));   
        }
        for(Account a :acclist){
            if(city == a.BillingCity){
             
         wrplst.add(new wrapper(a)); 
            }
        
          if(city == '' ){
               ApexPages.addmessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Enter City')); 
            } 
            
        }
       
     
   
        
    }
  
    public class wrapper{
        public Account acc{get;set;}
        public Boolean selected{get;set;}  
      
        
        
        public wrapper(Account a){
          this.acc = a;
         
            
        }
    }
}