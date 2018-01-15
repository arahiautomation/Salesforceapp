public class OpportunityAmount {
   public static  Double TotalAmount=0;
    public static void oppamount(List<Opportunity>opp){
        for(Opportunity o1 :[select Amount from Opportunity where CreatedDate = Today AND
                             CreatedByID =:UserInfo.getUserId()]){
          TotalAmount = TotalAmount+o1.Amount; 
        }
        for(Opportunity o2:opp){
           TotalAmount = TotalAmount+o2.Amount; 
            if(TotalAmount>100000){
           o2.addError('Opportunity Cannot Entered');     
                
            }  
        } 
        
    }
}