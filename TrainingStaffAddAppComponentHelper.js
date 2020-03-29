({
	MyhelperMethod : function() {
		
        //Setting the APEX parameter
        actionApex.setParams({
            staff : varStaff
        });
        
        //Setting the callback
        actionApex.setCallback(this,function(a){
          var state = 	a.getState();
            if(state = "SUCCESS"){
            alert("Success! Staff Added.");
        }
            else if(state = "ERROR"){
            alert("Error in calling server side action");
        } 
        });
        
        // queue to server
               $A.enqueueAction(action);
	}
})
