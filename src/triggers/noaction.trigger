trigger noaction on Account (before Insert,before delete, before update) {
User u = [select id, Name from user where username = 'cynthiacapy@gmail.com'];
if (u.id == userinfo.getuserid()){
if(trigger.isDelete){
for(Account a:trigger.old){
a.addError('Account can not be deleted');
}

}
if(Trigger.isInsert){
for(Account a :trigger.new){
a.addError('Account can not be inserted');
}
}
if(Trigger.isUpdate){
for(Account a :trigger.new){
a.addError('Account can not be updated');
}
}
}
}