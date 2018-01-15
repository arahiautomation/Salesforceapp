@isTest
public class Batchableb1job {
@istest
    public  static void job1(){
       List<Account> acclst = new List<Account>();
        for(Integer i =0;i<50;i++){
           Account a = new Account();
            a.Name = 'Testbatch'+i;
            a.Industry='Information'+i;
            acclst.add(a);
            
        }
        Insert acclst;
        
        
       system.test.startTest();
        Batchableb1 bb = new Batchableb1();
        ID Batchid = database.executeBatch(bb);
        system.test.stopTest();
     
    }    
}