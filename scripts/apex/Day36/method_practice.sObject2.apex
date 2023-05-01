
// Contact c1 = Utils.getContact('Snow');
// System.debug('c1 value is : ' + c1);
// // insert c1;

// System.debug('Utils.getContact(\'ABC\') value is : ' + Utils.getContact('ABC'));



// List<Contact> myContacts =  Utils.getContacts('Snow',10) ; 
// // size of myContacts should be 10
// System.debug('myContacts value is : ' + myContacts);


// EmailManager.sendMail('alzuhairi911@gmail.com','body from APex ','HR');

// Account myAcc = Utils.getAccountAndContacts('Acc With Contact', 4);
// System.debug('myAcc value is : ' + myAcc);

// // get all the child contacts that belong to above Account here 

// List<Contact> childContacts = [SELECT LastName from Contact 
//                                 WHERE AccountId =  :myAcc.Id  ]; 

// System.debug('childContacts value is : ' + childContacts);


Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
                FROM Account
                WHERE Name = 'Acc with Contact'
                LIMIT 1 ] ; 
 // Print account name 
 System.debug('acc.Name value is : ' + acc.Name);
 // how do we access subquery part of parent to child query
 System.debug('acc.Contacts value is : ' + acc.Contacts);

 List<Contact> accChildContact = acc.contacts ; 
 // print the contact lastName 

 for(Contact each : accChildContact) {
    System.debug('Contact name value : ' + each.LastName);
 }
    
 
                