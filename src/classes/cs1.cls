Public class cs1{
List<JobPosition__c>jp = [select Name,  Functional_Area__c ,Status__c from  Jobposition__c];

public List<JobPosition__c> getjpact(){
return jp;


}


}