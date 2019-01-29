public class CustomSettingEx {
    
 public  static void  customSetting()
    {
                                              //method used for getting the list of custom setting
        List<CountryCode__c> countryCode = CountryCode__c.getall().values();
        system.debug('size of list '+ countryCode.size());
        Map<string ,CountryCode__c> countryMap= CountryCode__c.getall();
        system.debug('map ex '  );
        CountryCode__c myCS1 = CountryCode__c.getValues('India');
        
    }

}