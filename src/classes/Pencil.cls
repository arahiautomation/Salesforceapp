public  virtual class Pencil{
  String color = 'Black';
  String name = 'pencil';
  Static integer pencilcount = 2;  

    
    public  virtual void Method1(){
        
       system.debug(color);
    system.debug(name);
     system.debug(pencilcount);   
    }
    public static void method2(){
        
        system.debug(pencilcount);
      Pencil mypencil = new pencil();
      system.debug(mypencil.color);
     } 
   
}