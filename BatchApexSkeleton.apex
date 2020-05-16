global class MyBatchClass implements Database.Batchable<sObject> {
    global (Database.QueryLocator | Iterable<sObject>) start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
    }
    global void execute(Database.BatchableContext bc, List<P> records){
        // process each batch of records
    }    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    
}
