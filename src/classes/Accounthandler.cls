public class Accounthandler {
    public static void handlerBeforeInsert(List<Account>acclist){
        for(Account a :acclist ){
            
            a.Description  = 'this is the Description';
            
            }
        
    }
    public  static void handlerAfterInsert(List<Account>acclist){
        List<Task>tasklist = new List<Task>();
        for(Account a: acclist){
            task Atask = new Task();
            atask.OwnerId = a.OwnerId;
            atask.priority = 'normal';
            atask.Subject = 'This is a task';
            atask.WhatId  = a.Id;
           tasklist.add(atask);
            
 }insert tasklist;
    }
}