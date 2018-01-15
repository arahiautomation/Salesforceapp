public class Createcontroller2 {
   List<wrap1>wrap1st= new List<wrap1>();
    List<Account>Alist = new List<Account>();
    List<Contact>Clist = new List<Contact>(); 
    public  List<wrap1>selst{get;set;}
    public List<wrap1>getwraplststring(){
       
        Alist =[select Name,Phone from Account];
        Clist = [select FirstName,Email from Contact];
        for(Integer i=0;i<10;i++){
            wrap1st.add(new wrap1(Alist[i].Name,Alist[i].Phone,Clist[i].FirstName,Clist[i].Email)); 
        }
       return wrap1st;
    }
    public void getaccselected(){
          selst = new List<wrap1>();
        for(wrap1 w1:wrap1st){
            if(w1.selected==true){
             selst.add(w1);   
            }
            system.debug(selst);
        }
    }
    public class wrap1{
        public  String AName{get;set;}
        public String Aphone{get;set;}
        public String CFirstName{get;set;}
        public String CEmail{get;set;}
        Public Boolean selected{get;set;}
        public wrap1(String Aname,String Aphone,String Cfirstname,String Cemail){
            this.AName = Aname;
            this.Aphone = Aphone;
            this.CFirstName = Cfirstname;
            this.CEmail = Cemail;
            selected =false;
            
        }
    }
}