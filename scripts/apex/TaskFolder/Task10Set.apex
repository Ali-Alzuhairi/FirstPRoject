/**
1. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
    should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
     should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false 
    (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) 
   and print out true | false  (check out the existing method in String class)
 */
//TASK1
String str = '   We   Can  Do IT  ';

System.debug('str.trim() value is :' + str.trim());

str = str.normalizeSpace();
System.debug('str.normalizeSpace() value is : ' + str);

Boolean startWithOrNot = str.startsWith('We');
System.debug('startWithOrNot value is : ' + startWithOrNot);

Boolean endWith = str.endsWithIgnoreCase('IT');
System.debug('endWith value is : ' + endWith);
/**
2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String 
   - use for loop to go though each items
   - make each item TitleCase (lookup capitalize method from String class)
   - make sure to assign it back to yourList[i] so it actually update
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect 'Apex Made It Easy To Work With Salesforce Database'
 */

//TASK2

String message = 'APEX mAde iT Easy to wOrk With sAlesforce dAtabase';

String[] messageList = message.split(' ');
for (Integer i = 0; i < messageList.size(); i++) {
  String each = messageList.get(i);
  messageList.set(i, each.toLowerCase().capitalize());
}
System.debug('messageList value is : ' + messageList);
System.debug('joinedMessage value is : ' + String.join(messageList, ' '));

/**
3. Create an emptyList List of Lead
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields filled up as below
     
   'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org
 */
//TASK3
List<Lead> emptyList = new List<Lead>();
for (Integer i = 1; i < 10; i++) {
  emptyList.add(
    new Lead(
      FirstName = 'Test Lead FN ' + i,
      LastName = 'Test Lead LN ' + i,
      Company = 'Company ' + i
    )
  );
}
insert emptyList;
/**
4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
   - WhoId with the Id of the lead created above 
   - Priority 'High'
  - ActivityDate  Date 7 days from now 
 */
//TASK4
Lead reqLead = new Lead(LastName = 'Lead From Apex', Company = 'CYDEO');
insert reqLead;

Task apxTask = new Task();
apxTask.WhoId = reqLead.Id;
apxTask.Priority = 'High';
apxTask.ActivityDate = Date.today().addDays(7);

insert apxTask;
/**
5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
   - Name,  Opp - 1(2,3,4,5..10)
   - ClosedDate (10 days from Today), 
   - StageName ='Prospecting', 
   - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
   - Loop through your entire List of 10 items 
   - If amount is greater than 60000
   - Update AccountId field to Id of Account you created earlier
   - Add the Opportunity to coolOppsList
   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities amount over 60000 to 'Parent of Cool Opp'
 */
//TASK5
// Create List of Opportunity
List<Opportunity> oppList = new List<Opportunity>();
// Add 10 items in it with valid Opportunity required fields filled up
for (Integer i = 1; i <= 10; i++) {
  Opportunity opp = new Opportunity();
  // Name, Opp - 1(2,3,4,5..10)
  opp.Name = 'Opp - ' + i;
  // ClosedDate (10 days from Today),
  opp.CloseDate = Date.today().addDays(10);
  // StageName ='Prospecting', `
  opp.StageName = 'Prospecting';
  // Amount : random Integer between 0-100000
  opp.Amount = Math.round(Math.random() * 100000);
  // add it to the list
  oppList.add(opp);
}
// insert the list into your org
insert oppList;

Account coolAccount = new Account(Name = 'Parent of Cool Opps');
// insert into Salesforce org
insert coolAccount;

// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity>();
// Loop through your entire List of 10 items
for (Opportunity each : oppList) {
  // If amount is greater than 60000
  if (each.Amount > 60000) {
    // Update AccountId field to Id of Account you created earlier
    each.AccountId = coolAccount.Id;
    // Add the Opportunity to coolOppsList
    coolOppsList.add(each);
  }
}
// Update the coolOppsList in your org
update coolOppsList;
// delete the lowOppsList from your org
delete lowOppsList;

/**
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of
    how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of 
   how many days as Integer(check the doc)
 */
//TASK 6
Date birthDay = date.newInstance(1994, 6, 22);
System.debug('birthDay.day() value is : ' + birthDay.day());

System.debug('birthDay.month() value is : ' + birthDay.month());

System.debug('birthDay.year() value is : ' + birthDay.year());

System.debug('Is it LeapYear ' + Date.isLeapYear(birthDay.year()));

System.debug('monthsBetween today and birthDay is : ' + birthDay.monthsBetween(Date.today()));

System.debug('daysBetween today and birthDay is : ' + birthDay.daysBetween(Date.today()));


//TASK7
// 7. Create an Opportunity variable and assign the value with required fields set
//    - `Name` , `ClosedDate` , `StageName`
Opportunity o1 = new Opportunity();
o1.Name = 'Super Good Opp';
o1.CloseDate = Date.newInstance(2022, 10, 28);
o1.StageName = 'Prospecting';

System.debug('o1 value is : ' + o1);

// print out monthsBetween Date.today() and o1.CloseDate
Integer overDueInMonth = o1.CloseDate.monthsBetween(Date.today());
System.debug('Month passed since ClosedDate value : ' + overDueInMonth);
// how to put a condition to check the closed date is over 3 month
//    - if `ClosedDate` is over 3 months (use `monthsBetween` method) and `StageName` is not `Closed Won`
if (overDueInMonth > 3 && o1.StageName != 'Closed Won') {
  //update the `StageName` value to `Closed Lost`
  o1.StageName = 'Closed Lost';
}

System.debug('o1 value After update is : ' + o1);

//    - Now let's level up , given below stageNames List containing all stages in Opportunity
List<String> stageNames = new List<String>{
  'Prospecting',
  'Qualification',
  'Needs Analysis',
  'Value Proposition',
  'Id. Decision Makers',
  'Perception Analysis',
  'Proposal/Price Quote',
  'Negotiation/Review',
  'Closed Won',
  'Closed Lost'
};

// how to get one item from above list : get method with index
// as long as we provide valid index from 0 to itemCount-1
// we will get an item, so get a random number between 0 to itemCount-1
// and use get method and provide that random number then we get random item
Integer randomIndex = Math.round(Math.random() * 9);
//    - Create a String variable called `selectedStageName`
String selectedStageName = stageNames.get(randomIndex);
System.debug('selectedStageName value is : ' + selectedStageName);
//       - assign the value to a **random** item from above List of 10 item (from index 0-9)
//    - Create another Opportunity instance with below fields
//       - `Name` , `ClosedDate` , `StageName`(assign using `selectedStageName`)
//    - if `ClosedDate` is over 3 months and `StageName` is not `Closed Won`
//       - update the `StageName` value to `Closed Lost`
Opportunity o2 = new Opportunity();
o2.Name = 'Super Good Opp';
o2.CloseDate = Date.newInstance(2022, 10, 28);
o2.StageName = selectedStageName;

System.debug('o2 value is : ' + o2);
Integer overDueInMonth2 = o2.CloseDate.monthsBetween(Date.today());
System.debug('Month passed since ClosedDate value : ' + overDueInMonth2);

if (overDueInMonth2 > 3 && o2.StageName != 'Closed Won') {
  o2.StageName = 'Closed Lost';
}

System.debug('o2 value After update is : ' + o2);

/**
8. Create a Contact variable and assign value along with below fields 
   - LastName, Birthdate
   - insert it into Salesforce 
   - check if today is the birthday of this Contact according to Birthdate field value
      - print 'It's your Birthday Today, Tada! '
      - else print 'It's not your Birthday Today'
      - Hint : birthday means the date has same month and year as Today's date
 */
//TASK 8
Contact c1 = new Contact(
  LastName = 'Alzuhairi',
  Birthdate = Date.newInstance(2020, 3, 28));
//insert c1 ;
if (c1.Birthdate.day() == Date.today().day() &&
    c1.Birthdate.month() == Date.today().month()) {
  System.debug('\'It\'s your Birthday Today Tada!');
} else {
  System.debug('It\'s not your Birthday Today');
}
/**
9. Create a Account with Name value set 
   - insert it into Salesforce
   - Create a Contact with LastName filled up under this Account
   - insert it into Salesforce
   - Create Task with below fields set 
      - WhatId = Id of the Account above
      - WhoId  = Id of the Contact above 
      - Subject = 'Follow up with YourContactNameGoesHere' ; 
      - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
      - ActivityDate = 7 Days from Today
      - Status = 'Pending' ;
*/   
//TASK9
// Create a Account with Name value set
Account acc = new Account(Name = 'Cydeo');
// insert it into Salesforce
insert acc ; 
// Create a Contact with LastName filled up under this Account
Contact con = new Contact(LastName='Deg', AccountId =  acc.Id ); 
// insert it into Salesforce
insert con ; 

// Create Task with below fields set
Task t1 = new Task(); 
// WhatId = Id of the Account above
t1.WhatId = acc.Id ; 
// WhoId = Id of the Contact above
t1.WhoId  = con.Id ; 
// Subject = 'Follow up with YourContactNameGoesHere' ;
t1.Subject= 'Follow up with ' + con.LastName    ;
// Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
t1.Description = 'Have a chat with '+ con.LastName 
                    + ' from ' + acc.Name ; 

// ActivityDate = 7 Days from Today
t1.ActivityDate = Date.today() + 7 ; 
// Status = 'Pending' ;
t1.Status = 'Pending' ;

insert t1 ; 

/**
10. Create an Account variable with name targetAcc and assign value with below fields 
   - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
   - insert it into Salesforce
   - update below fields and reflect the changes in Salesforce
      - ShippingCountry     has same value as BillingCountry
      - ShippingState       has same value as BillingState
      - ShippingCity        has same value as BillingCity
      - ShippingPostalCode  has same value as BillingPostalCode
 */
//  Create an Account variable with name targetAcc and assign value with below fields
Account targetAcc = new Account();
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
targetAcc.Name = 'Salesforce Tower';
targetAcc.BillingState = 'California';
targetAcc.BillingCity = 'San Francisco';
targetAcc.BillingCountry = 'US';
targetAcc.BillingPostalCode = '11111';
//    - insert it into Salesforce
insert targetAcc;
System.debug('targetAcc value is : ' + targetAcc);

//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity = targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode;
//save it back to salesforce
update targetAcc;
