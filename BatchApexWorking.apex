global class LeadProcessor implements 
    Database.Batchable<sObject>{
	 global Database.QueryLocator start(Database.BatchableContext bc) {
         return Database.getQueryLocator('SELECT Id FROM Lead');
     }
     global void execute(Database.BatchableContext bc, List<Lead> scope){
         List<Lead> lstLead = new List<Lead>();
         
         for(Lead ld:scope){
             ld.LeadSource = 'Dreamforce';
             lstLead.add(ld);
         }
         
         update lstLead;
     }
     global void finish(Database.BatchableContext bc){
         System.debug('Records processed. Shazam!');
     }
        
}

-----Test Class-----

@isTest
public class LeadProcessorTest {
@testSetup 
    static void setup()
    {
        List<Lead> lsLead = new List<Lead>();
        
        for(Integer i =0; i< 200; i++){
            lsLead.add(new Lead(LastName='myLead '+i,
                               Company='Filpkart'));
        }
        insert lsLead;
    }
    static testmethod void test() { 
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200, [select count() from Lead where Company='Filpkart']);
    }
}
