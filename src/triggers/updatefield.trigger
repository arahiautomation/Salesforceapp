trigger updatefield on Opportunity (after insert) {
Set<Id>ids = new Set<id>();
for(Opportunity o :trigger.new){
ids.add(o.Accountid);

}
 list<Account>acc = [select Total_opportunities__c,Total_Amount__c,(select id ,Amount from Opportunities)from Account where id = :ids];
 for(Account a :acc){
 a.Total_opportunities__c = a.Opportunities.size();
 for(Opportunity o:a.opportunities){
 decimal sum = 0;
 sum = sum+o.Amount;
 
a.Total_Amount__c = sum;
 }
 update acc;
 }
}