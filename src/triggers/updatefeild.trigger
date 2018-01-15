trigger updatefeild on Opportunity (before insert) {

Set<Id>ids = new Set<id>();
for(Opportunity o :trigger.new){
ids.add(o.Accountid);
}

 List<Account>acc =[select Total_opportunities__c,Total_Amount__c,(select id ,Amount from Opportunities)from Account where id = :ids];
 for(Account a :acc){
 a.Total_opportunities__c = a.Opportunities.size();
    
      
   decimal sum =0; 
 for(Opportunity o:a.opportunities){

 sum = sum+o.Amount;
     

     }
a.Total_Amount__c = sum;
 }
    update acc;
}