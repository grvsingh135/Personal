({
	/* ceHandlerController.js */

    handleComponentEvent : function(cmp, event) {
       
        // set the handler attributes based on event data
        cmp.set("v.messageFromEvent", event.getParam("msg"));
   
    }

})