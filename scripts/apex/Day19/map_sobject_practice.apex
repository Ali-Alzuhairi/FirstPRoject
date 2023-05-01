/**
Create list of 5 account fill it up
 */

List<Account> accList = new List<Account>();
accList.add(new Account(Name = 'cydeo1'));
accList.add(new Account(Name = 'cydeo2'));
accList.add(new Account(Name = 'cydeo3'));
accList.add(new Account(Name = 'cydeo4'));
accList.add(new Account(Name = 'cydeo5'));

insert accList;
// Database.insert(accList,false); // another way to insert
// System.debug('accMap value is : ' + accMap);

// Map<Id, Account> accMap = new Map<Id, Account>(accList);
// // putAll (the record List) ==>> Map<Id, yoursObjectType>
// accMap.putAll(accList);
// System.debug('accMap value is : ' + accMap); 


Map<Id, Account> accMap = new Map<Id, Account>();

for(Account eachAccount : accList) {
    accMap.put(eachAccount.Id , eachAccount);
}
System.debug('accMap value is : ' + accMap); 
    
