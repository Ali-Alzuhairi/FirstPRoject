// System.debug('Drink Coffee'); 
// System.debug('Clean up'); 

// AsyncUtil.boilWater() ; 

// System.debug('Chop the onion');
// System.debug('Sit back and relax');
// System.debug('Continue to cook'); 


// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch', true, 1000);
// System.debug('myLeads.size()  value is : ' + myLeads.size() );

MyLeadBatchProcessor mlp = new MyLeadBatchProcessor();
Database.executeBatch(mlp, 200);