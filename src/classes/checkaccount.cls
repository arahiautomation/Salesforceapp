@Restresource(URlMapping ='/showAccount/*')
global class checkaccount{

@HttpGet
global static Account  getaccount(){
RestRequest req =RestContext.Request;
RestResponse res =RestContext.Response;
String AccountId = req.RequestURI.substring(req.RequestURI.Lastindexof('/')+1);
Account result = [select id,Name,BillingCity from Account where Id  = :AccountId];
return result;
}
@HttpPost
global static String postAccount(String Name,String Phone,String city){
 Account acc = New Account();
 acc.Name = Name;
 acc.Phone = Phone;
 acc.BillingCity = city;
insert acc;
return acc.Id;
}
@httpDelete
global static void deleteaccount(){
RestRequest req =RestContext.Request;
RestResponse res =RestContext.Response;
String accNumber = req.RequestURI.substring(req.RequestURI.Lastindexof('/')+1);
Account result = [select id,Name,BillingCity from Account where BillingCity = 'texas'];
delete result;
}

}