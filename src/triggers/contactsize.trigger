trigger contactsize on Contact (after insert) {
List<Account>acclist = new list <Account>();
set<id>conset = new set<id>();
List<Account>acclist2 = new List<Account>();
for(Contact c : Trigger.new){
conset.Add(c.Accountid);
}
acclist = [select id ,Name,numberofcontact__c,(select id from Contacts)from Account where id In : conset ];

for(Account acc : acclist){
Account a = new Account();
a.id =acc.id ;
a.numberofcontact__c = acc.Contacts.size();
acclist2 .add(a);
}
update acclist2;
}