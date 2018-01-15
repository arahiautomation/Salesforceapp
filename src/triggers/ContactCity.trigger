trigger ContactCity on Contact (before insert,before update) {
for(Contact c :trigger.new){
ID aid = c.Accountid;
Account a =[select id ,Name ,BillingCity from Account where id = :aid];
a.BillingCity = c.MailingCity;
}
}