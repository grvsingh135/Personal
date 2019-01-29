({
    doAction : function(cmp, event) {
        
        var params = event.getParam('arguments');
        if (params) {
           console.log('Param 1: '+ params.param1);
           console.log('Param 2: '+ params.param2);
        }
    }
})