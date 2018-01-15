trigger AccountaccTrigger on Account (before insert,After insert) {
    if(Trigger.isBefore&&trigger.isInsert){
        Accounthandler.handlerBeforeInsert(Trigger.new);
        
    }
    else if(Trigger.isAfter && Trigger.isInsert){
        Accounthandler.handlerAfterInsert(Trigger.new);
        
    }
}