public with sharing class OppController {
   //         Create a class called OppController 
// add a method called getOppsAmountGreaterThan(Decimal minAmount)
// make return list of Opportunities that match the criteria
// make it available for your lwc component
 @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppsAmountGreaterThan(Decimal minAmount){

        return [SELECT Id, Name, Amount
                FROM Opportunity
                WHERE Amount > : minAmount];
    }

    @AuraEnabled(cacheable=true)
    public static Opportunity getOppWithMaxAmount() {
      return [
        SELECT Id, Name, Amount
        FROM Opportunity
        WHERE Amount != null
        ORDER BY Amount DESC
        LIMIT 1
      ];
    }


}