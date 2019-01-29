trigger CountTotalContact_Account_1 on Contact (after insert) {
/*set<id> accountIds=new set<id>();
    for(Contact con:Trigger.new)
    {
        accountIds.add(con.AccountId);
    }
    list<account> obj=new list<account>();
    for(account acc:[select id,Total_Contact__c,(select id from contacts) from account  where id in  :(accountIds)])
    {
        acc.Total_Contact__c=acc.contacts.size();
        obj.add(acc);
    }
   
    update obj;*/
    
}