trigger AttachmentAcc on Attachment (before insert) {
List<Account>acclist = new List<Account>();
    List<Account>acclist2 = new List<Account>();
    set<id>accid = new set<id>();
    for(Attachment at : trigger.new){
        accid.add(at.ParentId);
    }
    acclist = [select id ,Has_Attachment__c from Account where id In :accid];
    if(acclist!= Null && acclist.size()>0){
        for(Account acc : acclist){
            acc.Has_Attachment__C = true;
          acclist2.add(acc) ; 
        } 
        update acclist2;
    }
   
}