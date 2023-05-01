/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2.item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */

String[] groceries = new String[4];
groceries[0] = 'Bread';
groceries[1] = 'Egg';
groceries[2] = 'Beef';
groceries[3] = 'Banana';

//we add item to array just like LIST
groceries.add('Milk');
System.debug('groceries Value is :' + groceries);

// suing array syntax , print out the item at index 2
System.debug('item at index 2 :' + groceries[2]);
// suing array syntax , print out the item at index 2
System.debug('item at index 2 :' + groceries.get(2));


