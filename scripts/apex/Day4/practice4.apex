


String season = 'winter';
switch on season {

    when ' spring'{
        System.debug('Go Camping');
    }
    when ' summer ' {
        System.debug(' Go Swimming ');
    }
    when 'fall'{
        System.debug('Go Pick Pumkin');
    }
    when 'winter'{
        System.debug('Go Skiing');
    }
    when else {
        System.debug('Invalid Season');
    }

}



// Declare a varible called dayCode as Integer 
// initialize it's value 

// check if the dayCode value is 1,2,3,4,5 
// if it's print weekday 
// if it is 6 and 7 print weekand 
// else invalid day code 

Integer dayCode = 5;
if (dayCode==1 || dayCode==2 || dayCode==3 || dayCode==4 || dayCode==5){
    System.debug ('Weekdays ');

}else if (dayCode==6 || dayCode ==7){
    System.debug('weekand');
}else{
    System.debug( 'invalid day ');
}


Integer dayCodee=5;
switch on dayCodee{
    when 1, 2, 3, 4, 5{
      System.debug('Weekdays ');
    }
    when 6, 7{
       System.debug('Weekend  '); 
    }
    when else{
        System.debug('Invalid Day');
    }
}


Boolean primeMember = false ; 
Integer itemPrice = 1 ; 
// if primeMember is true , there is no shipping cost 
// simply print out Your shipping is free
// print total is itemPrice 
// if primeMember is false 
     // itemPrice is greater than 35  ,
            // print your shipping is free 
     // itemPrice is less than 35 , 
            // print out shipping cost is 5$
            // print out total is  itemPrice + 5 

if(primeMember==true){  // you can also directly write if(primeMember)
        System.debug('Your shipping is free');
}else{
    
    if(itemPrice>=35){
        System.debug('Non-primeMember : Your shipping is free');
    }else{
        System.debug('shipping cost is 5$');
        System.debug('total is ' +  (itemPrice+5)  );
    }  
}


