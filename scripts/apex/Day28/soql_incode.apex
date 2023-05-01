

// Get 1 Account Record (Name, AnnualRevenue, Rating) 
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable
 
 //Apex and SOQL Works seamlessly together 
 // we can use SOQL to get data and store it into 
 // sObject type pr list of sObject type
 // [YOUR SOQL GOES HERE]

 Account a1 = [SELECT Name, AnnualRevenue,Rating,phone  FROM Account LIMIT 1];
 System.debug('a1 value is : ' + a1);
 //Only fields that available are
 // the fields that showed up in SELECT line
 System.debug('a1.phone value is : ' + a1.phone);


// Get All the account record with Rating filed not null
// include, Id, Name, Rating, AnnualRevenue
// Store it into List<Account>
 
 List<Account> accList = [SELECT Id,Name,Rating,AnnualRevenue
                          FROM Account
                          WHERE Rating != NULL];

//print out the size of the list 
System.debug('accList.Size() value is : ' + accList.Size());

// Print out the The Name, Rating in the loop 
for(Account each : accList) {
    System.debug('Name value : ' + each.Name +' Rating value :'+ each.Rating );
}

System.debug('------------------');
//Get all the Lead Name, status if the status is Working- Contacted 
// Store it into the list and loop through each item 
// print the same Name and Status 



    List<Lead> LeadList=[SELECT Name, Status
                         FROM LEAD
                         WHERE Status = 'Working - Contacted' ];

for(Lead each : LeadList) {
    System.debug('each.name value : ' + each.Name + ' -- ' +each.Status);
}
     