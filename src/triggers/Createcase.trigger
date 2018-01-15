trigger Createcase on Account (after insert) {
  for(Account acc : Trigger.new){
  Case mycase = new Case();
  mycase.Subject = 'Dedupe this account';
 mycase.AccountId = acc.Id;
  insert mycase;
  
  }
}