trigger Accountwithcontact on Account (after insert) {

List<Contact>conlist = new List <Contact>();
for(Account a :trigger.new){

Contact c = new Contact();
c.Accountid = a.id;
c.FirstName = 'abc';
c.LastName = a.Name;
c.phone = '1231231234';
c.Email = 'acd@acd.com';
c.Fax = '1231231234';
conlist.add(c);

}
insert conlist;
}