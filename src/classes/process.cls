public class process {
@invocableMethod
    public static  void processmethod(List<ID>ids){
        List<Lead>leadlst= [select Name from Lead where id IN :ids];
        for(Lead l : leadlst){
         l.FirstName = 'processName';   
        }
        upsert leadlst;
    }
    
}