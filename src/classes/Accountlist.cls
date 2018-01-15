public class Accountlist{
List<Account>dirlist =[select Name ,Phone,Type from Account];
List<Opportunity>opplist = [select Name ,CloseDate,StageName from Opportunity ];
public List<Account> getdirlist(){
return dirlist;
}
public List<Opportunity>getopplist(){
return opplist;
}
}