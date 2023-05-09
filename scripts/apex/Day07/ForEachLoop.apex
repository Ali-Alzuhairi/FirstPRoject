
/**
For each loop is specifically used to
Iterate over (loop through) each and every item
every item
inside Collection like (List, Set)

for(DataType eachItem : yourCollectionVariable ){
// do what you want to do with each item
}
 */

List<Integer> numberList = new List<Integer>{5,7,4,9,6} ; 
// print out the size of this list 
System.debug('Item count: '  + numberList.size()   ); 


for( Integer each : numberList){
    System.debug(each);
}


//create a List of String and add 4 items
// use for each loop iterate over them and print it out 

List<String> roles = new List<String>(); 
roles.add('clock-master');
roles.add('screenshot-master');
roles.add('karate-girl');
roles.add('type-master');
//use for each loop to iterate over each item and print it out
for(String eachRole : roles){
System.debug('Current Role: '+eachRole);
}

// here is how you would do it in one shot 
// List<String> roles = new List<String>(){'clock-master','screenshot-master','karate-girl''type-master'}; 




