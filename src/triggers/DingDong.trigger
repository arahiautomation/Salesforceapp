trigger DingDong on Lead (before update) {
    for(Lead myLead : Trigger.new){
    mylead.FirstName = 'Ding';
    myLead.LastName =  'Dong';
    
    
    }
}