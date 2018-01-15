@isTest
public class Test{
@isTest
static void updatelead(){
Lead l = new Lead();
l.FirstName = 'du';
l.LastName = 'david';
l.Company = 'Google';
l.Status = 'Open';

insert l;
l.Company = 'Yahoo';
update l;


}


}