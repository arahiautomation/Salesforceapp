public class Search{
String keyword;
List<Contact>results ;


public String getkeyword(){
return keyword;
}
public void setkeyword(String s){
keyword = s;
}
public List<Contact> getresults(){
return results;
}
public pageReference search_now(){

results = (List<Contact>)[Find :keyword IN All Fields Returning Contact (FirstName,lastName,Phone,Fax)][0];
return Null;
}

}