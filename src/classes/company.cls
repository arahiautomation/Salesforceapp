public class company {
    public String Name ;
    public  product po;
    public  Agent Ag;
    
    public company(String pName,Integer pprice,String Aname,Integer Aage){
     String Name = 'companyName'; 
        Product po = New Product();
        po.productName = pName;
        po.productprice = pprice;
        Agent Ag = new Agent();
        Ag.AgentName = Aname;
        Ag.AgentAge = Aage;
        
    }
    
    public class product{
      String productName = 'Product';
      integer productprice = 20;
    }
    public class Agent{
      String AgentName = 'Agent';
      Integer AgentAge = 35;  
        
    }
}