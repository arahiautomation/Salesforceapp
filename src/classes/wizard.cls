public class wizard {
    Account a = new Account();
    Contact c = new Contact();
    Opportunity o = new Opportunity();
    public Account geta(){
        return a;
    }
     public Contact getc(){
        return c;
    } public Opportunity geto(){
        return o;
    }
    public pageReference gotopage1(){
     return page.wfcpage1;
        
    }
     public pageReference gotopage2(){
     return page.wfcpage2;
        
    } public pageReference gotopage3(){
     return page.wfcpage3;
        
    } public pageReference gotopage4(){
     return page.wfcpage4;
        
    }
    public pageReference savenow(){
        insert a;
        c.AccountId = a.Id;
        insert c;
        o.AccountId = a.Id;
        insert o;
       return page.wfcpage5; 
    }
}