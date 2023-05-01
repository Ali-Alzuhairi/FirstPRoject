trigger triggerAccount on Account (before insert,
                                   before update ,  
                                   before delete ,  
                                   after undelete) {


for(Account each : Trigger.new) {
    each.ShippingStreet     = each.BillingStreet;
    each.ShippingCity       = each.BillingCity;
    each.ShippingState      = each.BillingState;
    each.ShippingCountry    = each.BillingCountry;
    each.ShippingPostalCode = each.BillingPostalCode;
}
if(Trigger.isBefore && Trigger.isUpdate){
    for(Account each : Trigger.new) {
        if(each.SLA__c == 'Gold'){
            each.CustomerPriority__c = 'High';
        
        }
        if(each.SLA__c == 'Silver'|| each.SLA__c =='Platinum'){
            each.CustomerPriority__c  = 'Medium';
            each.SLAExpirationDate__c = Date.today().addMonths(6);
        }else{
            each.CustomerPriority__c  = 'Low';
        }
        if(each.SLA__c != null && each.SLAExpirationDate__c == null ){
        each.addError('Can not delete Active Account with SLA not expired');
        }
    }     
}
    if(Trigger.isBefore && Trigger.isDelete){
        for(Account each : Trigger.old) {
           if(each.Active__c == 'Yes' && each.SLAExpirationDate__c > Date.today()){
            each.addError('Can not delete Active Account with SLA not expired');
           }
        }  
    }

    if( Trigger.isAfter && Trigger.isUndelete ){

         List<Task> taskList = new List<Task>();
         for(Account eachAcc : Trigger.new) {
            Task a = new Task();
            a.Subject      = eachAcc.Name ; 
            a.Description  = 'Account was restored, follow up on the details ';
            a.ActivityDate = Date.today();
            a.Priority     = 'High';
            a.WhatId       = eachAcc.Id ; 
            taskList .add(a);
         } 
         insert taskList;
    }

 }