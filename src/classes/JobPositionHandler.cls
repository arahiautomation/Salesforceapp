public class JobPositionHandler {
    public static void jphandlerbeforeinsert(List<JobPosition__c>jplist){
        for(JobPosition__c jp :jplist){
          jp.Job_Description__c ='this is description';
            system.debug('hello world');
        } 
    } 
        public static void jphandlerafterinsert(List<JobPosition__c>jplist){
            List<Task>tasklist = new List<Task>();
            for(JobPosition__c jp:jplist){
               task t = new task(); 
               t.OwnerId = jp.OwnerId;
                t.Priority = 'high';
                t.Description = 'New task created';
                t.WhatId = jp.Id;
                tasklist.add(t);
            }
           insert tasklist;
        }   
        
   
}