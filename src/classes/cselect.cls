public class cselect {
public String selectedcolor{get;set;}
public List<selectoption>lstcolor{get;set;}
 
public PageReference meth(){return null;}
public cselect (){
selectedcolor = '';
lstcolor = new List<Selectoption>();
lstcolor.add(new Selectoption('','---None---'));
lstcolor.add(new Selectoption('Red','Red'));
lstcolor.add(new Selectoption('Green','Green'));
lstcolor.add(new Selectoption('ABC','Letters'));

}



}