public class University {
public String Name;
public Collage co;
public Student s;
 public University(String cname,Integer sage){
       Name = 'MIT';
      co = new collage();
        co.collageName = cname;
     s= new student();
        s.Age = sage;
        
    }    
    
    public class Collage{
       public String collageName;
        public Integer studentnumber;
    }
    public class Student{
     public String studentName;
     public integer Age;   
        
    }
}