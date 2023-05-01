trigger BookOwnerTrigger on Book__c(before insert, before update) {
    System.debug('Trigger is running for Event : ' + Trigger.operationType);
  
    BookTriggerHandler.handleBookOwnerTrigger(Trigger.new);
  }
  