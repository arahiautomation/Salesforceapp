public class Searchwrapclass {

    public String getListwrp() {
        return null;
    }





   

    List<wrapaccount>listwrp {get;set;}
    
    public  Searchwrapclass(){
        listwrp = new List<wrapaccount>(); 
       
        List<Account>acclist = New List<Account>([select id,AccountNumber,Name,Phone,Billingcity from Account]); 
        for(Integer i=0;i<acclist.size();i++){
            listwrp.add(new wrapaccount(string.valueOf((i+1)),acclist[i]));
        } 
            
        }
     
       
    public class wrapaccount{
        public Account acc {get;set;}
        public Boolean selected {get;set;}
        public String slno {get;set;}
        
        public wrapaccount(String s,Account a){
         this.acc = a;
         this.selected = false;
         this.slno = s;   
            
        }
        
    }
}