import { api, LightningElement, track, wire } from 'lwc';
import GetStudentHolds from '@salesforce/apex/FFA_StudentHoldAndTrackList.GetStudentDetails';
import { NavigationMixin } from 'lightning/navigation';

export default class HoldsAndTrackGroupStudentCmp extends NavigationMixin(LightningElement) {
    @api recordId;
    @track studentHolds;
    url;
    holdId;
    @wire(GetStudentHolds, {zpeId:'$recordId'}) 
        studentHolds({error, data}){
            if(data){
                this.studentHolds = data;
            }
            else if(error){
                this.error = error;
            }
        }
    
    get countRecord(){      
        if(this.studentHolds){
            if(this.studentHolds.length === 0){
                return false;
            }
            else{
                return true;
            }
        }
    }
    navigateToRecordViewPage(eventRecordId) {
        // View a custom object record.
        console.log('eventId:'+eventRecordId);
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId :eventRecordId ,
                objectApiName: 'Student_Group__c', // objectApiName is optional
                actionName: 'view'
            }
        });
    }

    handleClick(evt) {
        // Stop the event's default behavior.
        // Stop the event from bubbling up in the DOM.
        evt.preventDefault();
        evt.stopPropagation();
        // Navigate to the page.
        // this[NavigationMixin.Navigate](this.navigateToHoldTrackRecordPage(evt.target.dataset.recordId));
        this.navigateToRecordViewPage(evt.target.dataset.recordId);
    }
}