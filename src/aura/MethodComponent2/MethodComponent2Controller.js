({
    onCallChildMethod : function(component, event, helper) {
        var childComponent = component.find('child');
        childComponent.sampleMethod('A', 'ABC');
    }
})