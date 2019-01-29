public class TriggerSwitchDomain {
    
    public static Map<String, FeatureControl__mdt> getTriggerSwitch() {
        Map<String, FeatureControl__mdt> triggerSwitchData = new Map<String, FeatureControl__mdt>();
        List<FeatureControl__mdt> triggerSwitch = [
            SELECT DeveloperName,Active__c
            FROM FeatureControl__mdt
        ];
        if(!triggerSwitch.isEmpty()) {
            for(FeatureControl__mdt t : triggerSwitch) {
                if(triggerSwitchData.get(t.DeveloperName) == null) {
                    triggerSwitchData.put(t.DeveloperName, t);
                }
            }
        }
        return triggerSwitchData;
    }
}