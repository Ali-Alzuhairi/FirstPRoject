//Create a Opportunity variable and assign its value
// fill up below field
// Name,StageName,closeDate
Opportunity o1 = new Opportunity();
o1.name      = 'Opp 1 from Apex';
o1.StageName = ' Closed Won';
o1.CloseDate = date.today();

System.debug('o1 value is : ' + o1); 

Opportunity o2 = new Opportunity();
o2.name      = 'Opp 2 from Apex';
o2.StageName = ' Closed Won';
o2.CloseDate = date.today();
// Create List of Opportunity add 2 items 
List<Opportunity> opps  =new List<Opportunity>{o1,o2};
System.debug('opps value is : ' + opps); 
 
 //insert these Opps into salesforce 
 insert opps;