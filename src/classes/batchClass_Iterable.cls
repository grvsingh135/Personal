public class batchClass_Iterable implements database.Batchable<string> {
    
    public Iterable<string> start(Database.BatchableContext bc)
    {

        return ListAccount();
    }
    public  void execute(Database.BatchableContext bc ,list<string> scope)
    {
       
        for(string ac:scope)
        {
            system.debug('account id'+ ac);
            
        }
    }
    
    public void finish(Database.BatchableContext bc)
    {
        system.debug('finish');
        
    }
    
    
    public list<string> ListAccount()
    {
        list<string> str=new list<string>();
        str.add('a');
        str.add('b');
        
        return str;   
    }
}