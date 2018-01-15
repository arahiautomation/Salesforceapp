trigger candidatelocation on Job_Candidate__c (before insert) {
for(Job_Candidate__c jc :trigger.new){
if(jc.State_Province__c == 'texas')
(jc.City__c = 'Austin');

}




}