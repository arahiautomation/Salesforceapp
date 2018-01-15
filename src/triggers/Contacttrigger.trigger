trigger Contacttrigger on Contact (before insert) {
for(Contact c :Trigger.new){
if(c.FirstName == 'InvalidName'){
c.addError('Contact not Allowed');
}

}
}