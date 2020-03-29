<aura:component controller="BhadduStaffAddApexClass"
                implements="flexipage:availableForAllPageTypes,flexipage:availableForRecordHome,force:hasRecordId" 
                access="global" >
	Hello World! Thank you for showing!	
    <!-- Attribute Definition -->
    <aura:attribute name="AttBhadduStaff" type="Bhaddu_Staff__c" 
                    default="{'sobjectType':'Bhaddu_Staff__c',
                              'Staff_Name__c':'',
                              'Staff_Phone_No__c':''
                             }"/>
    <div class="slds-paper-header">
        <div class="slds-media__body">
            <h1 class="slds-page-header__title">Welcome to the page</h1>
        </div>
        <div class="container-fluid">
            <h3>Please enter Staff details</h3>
            <div class="form-group">
                <label>Staff Name:</label>
                <ui:inputText class="form-control" value="{!v.Staff_Name__c}" />
            </div>
               <div class="form-group">
                <label>Staff Phone No:</label>
                <ui:inputText class="form-control" value="{!v.Staff_Phone_No__c}" />
            </div>
        </div>
        <div class="col-md-4 text-center">
            <lightning:button class="btn btn-default" onclick="{!c.createStaff}">Create</lightning:button>
        </div>
    </div>
</aura:component>
