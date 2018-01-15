public class Createcontroller4 {
    public List<wrap>lstwrp{get;set;}
    public List<wrap>lstwrp1{get;set;}
    public List<Account>lstselected{get;set;}
    public List<Contact>lstselected1{get;set;}
    public void getrecords(){
      lstwrp = new List<wrap>();
        List<account>acclst = [select Name,Phone,BillingCity from Account];
       
        for(Account a:acclst){
            lstwrp.add(new wrap(a));
        }
        system.debug(lstwrp);
         
        }
    public void getcrecords(){
        lstwrp1= new List <wrap>();
        List<Contact>conlst = [select FirstName,Email from Contact ];
        for(Contact c:conlst){
           lstwrp1.add(new wrap(c)); 
        }
    }
      
    public void processselected(){
      lstselected = new List<Account>();
        for(wrap w :lstwrp){
        if( w.selected ==true){
           lstselected.add(w.acc); 
        }
        }
    }
    public void processselected1(){
        lstselected1 = new List<Contact>();
        for(wrap w:lstwrp1){
            if(w.selected == true){
               lstselected1.add(w.con); 
            } 
        }
        system.debug(lstselected1);
    }
    
    
    public class wrap{
        
        public Account acc{get;set;}
        public Contact con{get;set;}
        public Boolean selected{get;set;}
        
        public wrap (Account a){
            this.acc = a;
            
           selected = false;
        }
        public wrap(Contact c){
            this.con = c;
            selected =false;
        }
        
    }
}