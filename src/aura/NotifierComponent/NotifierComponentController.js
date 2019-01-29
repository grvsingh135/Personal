/* ceNotifierController.js */
({
    fireComponentEvent : function(cmp, event) {
        // Get the component event by using the
        // name value from aura:registerEvent
        var cmpEvent = cmp.getEvent("eventMessasge");
        cmpEvent.setParams({
            "msg" : "A component event fired me. " });
        cmpEvent.fire();
    }
})