trigger Applewatchpromo on Opportunity (after insert) {
  for(Opportunity opp : Trigger.new){
    Task t = new Task();
    t.Subject = 'Applewatch promo';
    t.Description = 'Send as soon as possible';
    t.priority  = 'High';
    t.Whatid = opp.id;
    insert t;
  
  }
}