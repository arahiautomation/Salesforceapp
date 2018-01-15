public class NewCaseListController {
    public  List <Case> getnewCase(){
        List <Case> caselist = [select id,CaseNumber from Case where Status = 'New'];
      return caselist;
        
    }
}