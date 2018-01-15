public class AccController {
public Account account;
    
    public Account getaccName(){
       account = [select id,Name from Account 
                  Where id = :account.Id];
       return account; 
    }   
}