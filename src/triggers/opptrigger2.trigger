trigger opptrigger2 on Opportunity (before insert,before update) {
for (Opportunity o : trigger.new){

if (Trigger.isInsert && o.Amount < 5000){
o.addError('Opportunity cannot be Entered with amount lessthan 5000');

}else if (Trigger.isUpdate && o.Amount <3000){
o.addError('Opportunity cannot be entered with amount lessthan 3000');
}
}
}