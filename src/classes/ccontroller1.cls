public class ccontroller1 {

    public List< Account > getlistacc(){
        List<Account>acclist = [select id,Name from Account];
        return acclist;
    }
    public List<Contact> getlistcon(){
        List<Contact>conlist = [select id,name From Contact];
        return conlist;
    }
}