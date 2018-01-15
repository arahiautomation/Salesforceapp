public class jpja{
List<JobPosition__c>jp = [select Name,Functional_Area__c,Status__c from  JobPosition__c];

List<JobApplication__c>ja = [select JobCandidate__c,JobPosition__c,Total_Rating__c from JobApplication__c];

public List<JobPosition__c>getjps(){
return jp;

}
public List<JobApplication__c>getjas(){
return ja;

}


}