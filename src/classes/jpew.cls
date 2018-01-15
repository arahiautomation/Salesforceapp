public class jpew{
List<JobPosition__c>jp = [select Name,Functional_Area__c,Status__c from JobPosition__c];
List<Employment_Website__c>ew = [select Maximum_Budget__c,PricePerPost__c from Employment_Website__c ];


public List<Jobposition__c> getjps(){

return jp;



}
Public List<Employment_Website__c> getews(){
return ew;

}
Public pageReference openjps(){
 jp =[select Name,Functional_Area__c,Status__c from Jobposition__c where Status__c = 'open-approved'];
return null;


}
public pageReference budgetew(){
ew = [select maximum_Budget__c,PricePerPost__c from Employment_Website__c where maximum_Budget__c>2000];
return null;
}
public pageReference gotopage(){

return page.visualforceJobPosition7;

}

}