public class jpamount{
 public static void jptodayamount(List<Jobposition__c>jps){
 double TotalAmount = 0;
 for( JObPosition__c jp1:[select Name,Max_Pay__c,Status__c from JobPosition__c where createddate = TODAY AND createdbyID = :UserINfo.getuserID()]){
 
 TotalAmount+= jp1.Max_Pay__c ;
 
 
 }
 
 for(JobPosition__c jp2 :jps){
 
 TotalAmount+= jp2.Max_pay__c;
 
 if(TotalAmount > 400000)
 
 jp2.addError(' Maxpay should not exceed morethan 400000 per day ');
 
 
 
 }
 
 
 }





}