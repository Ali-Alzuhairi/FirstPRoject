/**

Create a List of String that store 4 names 

Print out the size 
Print the item 3

Print the item 1

Print out every item using for loop 


// The 0 is just like the vegetarian people in coding they eat meat 
 */
List<String> names = new List<String>(); 
 names.add('Hakan') ; 
 names.add('Nina') ; 
 names.add('Ali') ; 
 names.add('Ilaha') ; 
 names.add('Hyder') ; 
 names.add('Samia') ; 
 names.add('Marina') ; 
 names.add('Cristina') ; 
 names.add('Ahmed') ; 

System.debug(names) ; 

//  print out the size 
 System.debug('Item count in the list ' +  names.size()   ); 

//  print the item 3 
 System.debug(  names.get(2) ) ; 
//  print the item 1 
 System.debug(  names.get(0) ) ; 

 //store the value number 2 item into a variable
 // the print out 
 String item2 = names.get(1);
 System.debug('item2 value is '+item2);

for( Integer index =0;index < names.size() ;index++){
    // Index X value is Y
    System.debug('Index '+index+' is '+names.get(index));
    
}
