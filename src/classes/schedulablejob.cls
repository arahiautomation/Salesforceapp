public class schedulablejob implements Schedulable{
    public void execute(SchedulableContext con){
       Batchableb1 b = new Batchableb1();
        database.executeBatch(b);
    }   
}