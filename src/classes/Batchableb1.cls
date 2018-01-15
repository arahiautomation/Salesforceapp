global class Batchableb1 implements Database.Batchable<sobject> {
    global Integer count = 0;
    global database.QueryLocator start(Database.BatchableContext con){
       return database.getQueryLocator('select id ,Name from Account');
    }
        global void execute(database.BatchableContext con,List<Account>acc_ln){
          
            for(Account a :acc_ln){
                a.Name = 'batchableName';
                
              
            }
           update acc_ln;
        }
            global void finish(database.BatchableContext con){
              system.debug('sucess');  
            }        
    }