public class searchacc{
String keyword1;
List<Account>result1;
List<Opportunity>result2;

public String getkeyword1(){
return keyword1;

}
public List<Account> getresult1(){
return result1;
}
public List<Opportunity>getresult2(){
return result2;
}
public void setkeyword1(String s){
keyword1 = s;
}
public pageReference search_now(){
result1 =(List<Account>) [Find :keyword1 In All fields returning Account(id,Name, Phone ,Fax)][0];

result2 = [select id ,Name ,StageName,CloseDate from Opportunity ];
return null;
}

}