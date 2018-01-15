public class candidateInterviewSchedule {
 public List<JobPosition__c> Ja =[select Name, Job_Description__c, Functional_Area__c, Status__c 
 from JobPosition__c];
              
Public  List<JobPosition__c>  getJobApplication(){
return Ja;
             
}

}