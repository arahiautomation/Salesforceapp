trigger createautomatic on Lead (after insert) {
List<Account>acclist = new List<Account>();
List<Contact>conlist = new List<Contact>();
List<Opportunity>opplist = new List<Opportunity>();
for(Lead l : Trigger.New){
Account a = New Account();
a.Name = l.lastName;
a.Phone = l.Phone;
acclist.add(a);
Contact c = new Contact();
c.LastName = l.LastName;
c.Phone = '222222222';
conlist.add(c);
Opportunity o = new Opportunity();

o.Name = l.LastName;
o.Amount = l.AnnualRevenue;
o.Closedate = system.today();
o.StageName = 'closedwon';
opplist.add(o);
}
insert acclist;
insert conlist;
insert opplist;
}