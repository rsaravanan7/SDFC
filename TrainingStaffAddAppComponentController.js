({
	createStaff : function(component, event, helper) {
        //For log
        console.log('Create record');
        
		alert('Staff record in Controller! Proceed..');
        //getting the candidate information
        var varStaff = component.get("v.AttBhadduStaff.Staff_Name__c");
        console.log('Staff Details added' + varStaff);
        
        //validation
        if($A.util.isEmpty(varStaff.Staff_Name__c) 
           || $.A.util.isUndefined(varStaff.Staff_Name__c)){
            alert('Staff name is required');
            return;
        }
        
        //Calling the APEX class
        var actionApex = component.get("c.createApexStaff");
        
        helper.MyhelperMethod()
        
	}
})
