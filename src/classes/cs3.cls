public class cs3{
String Keyword;
List<Jobposition__c>results;
public String getkeyword(){
return Keyword;

}
public List<JobPosition__c>getresults(){
return results;

}
public void setkeyword(String s){
Keyword =s;


}
public pagereference showresults(){
results=[select Name,Functional_Area__c,Status__c from Jobposition__c where Status__c =:Keyword];
return null;

}
}