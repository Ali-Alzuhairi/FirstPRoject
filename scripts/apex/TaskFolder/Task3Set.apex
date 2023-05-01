
//Task1
 for(Integer oddNum=1;oddNum <100;oddNum +=2){
    System.debug(oddNum);
 }

//Task2
Integer upperLimit =50;
for (Integer Count=1; count <= upperLimit; count++){
    System.debug(count);
}

//Task3

Integer startingNumber= 10;
For (Integer count = startingNumber ;count>=0;count--){
    System.debug(count);
}

//Task4
Integer EndingNumber=30;
startingNumber =20;
for ( Integer count = startingNumber ;count <= EndingNumber ; count++){
    System.debug(count);
}

//Task5
EndingNumber=20;
startingNumber=40;
for ( Integer count =startingNumber ;count >= EndingNumber ; count--){
    System.debug(count );
}
//Task6

for(Integer count=20;count<=60;count +=2){
    
     if (count ==40){
        System.debug('Yay we have finished half '+ count);
     }else {
    System.debug(count);
 }
}
//Task7

for (Integer count =1 ; count <=10;count++){
    System.debug('Sample Lead '+count);
}

//Task8
String firstName = 'Ali', lastName = 'Alzuhairi';
for (Integer count =1 ; count <=4;count++){
    System.debug(firstName+count+'  ,  '+lastName+count);
}

//Task9

 // String firstName = 'Ali', lastName = 'Alzuhairi';
for (Integer count=1;count<=5;count++){   
    System.debug(firstname+lastName+'_'+count+'@force.com');
}
//Task10

 // String firstName = 'Ali', lastName = 'Alzuhairi';
Integer leadCount = 4;
for(Integer count = 1; count<=leadCount; count++){
    System.debug('The lead '+ count + ' name is ' + firstName + ' ' + lastName + count ); 
    System.debug( firstName + '_' + lastName + count + '@force.com');
    System.debug('');
}
