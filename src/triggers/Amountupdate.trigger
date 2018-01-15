trigger Amountupdate on Opportunity (before update) {
  for(Opportunity opp : trigger.new){
  opp.Amount = 10000;
  
  
  }
}