public class ArthmaticCalculator {
public integer firstval,secondval,thirdval,fourthval,total;
    public ArthmaticCalculator(){
     firstval = 20;
     secondval =15;
     Thirdval = 10;
     fourthval = 5;   
        }
    
    public void add(){
        total = firstval +secondval;
        system.debug(total);
    }
    public void multiply(){
      total = thirdval*fourthval;  
        system.debug(total);
        
    }
    }