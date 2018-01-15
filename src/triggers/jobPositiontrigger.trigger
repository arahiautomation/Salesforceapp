trigger jobPositiontrigger on JobPosition__c (before insert,after insert) {
    if(Trigger.isBefore && trigger.isInsert){
        
JobPositionHandler.jphandlerbeforeinsert(Trigger.New) ;       
        
    }
    else if( Trigger.isAfter && trigger.isInsert){
      JobPositionHandler.jphandlerafterinsert(Trigger.New);
    }
}