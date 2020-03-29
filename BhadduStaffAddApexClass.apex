public with sharing class BhadduStaffAddApexClass {
    @AuraEnabled
    public static void createApexStaff(Bhaddu_Staff__c staff){
        try{
            system.debug('Staff Details' + staff);
            insert staff;
        }
        catch (Exception ex){
            //
        }
    }

}
