//TASK1
/**
1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
 */
Integer sum=0 ;
for (Integer count=1 ; count <=100; count+=2){
   sum += count; 
    System.debug(count);
}
   System.debug('The Sum is: '+sum);

// while Loop 
Integer count =1, total=0;
while (count<=100){
     total+=count;
    count+=2;
}
   System.debug('while loop .The Total is: '+total);

// Do while loop
Integer con= 1,sumNumber=0;
 do{
    sumNumber+=con;
    con+=2;
 }while(con<=100);
    System.debug('DO while loop. The sum is: '+sumNumber);
    /**
2. Write a program that store the even numbers from 1 to 20 into List of Integer
then write an apex code to get the sum of all items in the list. 
   */
   //TASK2
   List<Integer> numbers = new List<Integer>();
for(Integer count=0 ;count<=20;count+=2)
numbers.add(count);
System.debug(numbers);

Integer sum=0;
for (Integer count : numbers){
    sum+=count;
}
System.debug(sum);
/**
3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , add more items into 
   the list and run your program again to see if it works. 
    */
    //TASK3
    List<Decimal> DecNumber = new List<Decimal>{1.5,2.1,6.2,3.1,24.1,6.5,7.3,8.91,9.55,9.99};
     System.debug('The size of the list is: '+DecNumber.size());
        Decimal sum = 0;
    for (Decimal count : Decnumber){
        sum+=count;
    }
    System.debug('The sum of all numbers is: '+sum);
    System.debug('The average of all numbers is: '+sum / DecNumber.size());   
 /**
4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
     */
     //TASK4
     List<Long> longNum = new List<Long> {-12452642L,
                                        1574742772L,-425725724L,3247524L
                                       ,5245724L,41234567L,-22457247270L,
                                       -66543L,284321L,79876543L};
    long sum = 0 , countPostive=0,countNagative =0 ;
 for(Long count:longNum){
    if(count>0){
    sum+=count; 
    countPostive++;
    }else{
    countNagative++;
    }   
 }
 System.debug('The sum of the positive numbers is:'+sum);
 System.debug('The count of positive numbers is:'+countPostive);
 System.debug('The count of negative numbers is:'+countNagative);
/**
 5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
     */
     //TASK5
     List<String> names = new List<String>{'Ali','Hyder','JON','Abbas','Ahmed','Ali'
                                          ,'MOE','JON','Hyder','Sam'};
     Set<String> setOfNames = new Set<String>();
     for(String namesCount : names){ 
      setOfNames.add(namesCount);
     }
   System.debug(names);
   System.debug('The size of Set is:'+setOfNames.size());
   /**
6. Write a program that can create X sample List name according to given number as below 
  1. create a variable called leadCount as Integer and initialize to 4
  2. create a empty List of String 
  3. use for loop to add items to List to generate as below   
    Sample Lead 1
    Sample Lead 2
    Sample Lead 3
    Sample Lead 4
  4. print out the List variable and the size 
  5. try changing the leadCount and run your code again  
     */
     //TASK6
     Integer leadCount =4;
     List<String>  smLead = new List<String>();
     for(Integer count=1;count<=leadCount; count++){
        smLead.add('Sample Lead'+count);    
     }
    for(String names:smLead){
        System.debug(names);
    }
     System.debug(smLead.size());
   /*
7. Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
*/
//TASK7
String firstName ='Ali' , lastName = 'Alzuhairi' ;
Integer leadCount = 5; 
List<String> emptyList = new List<String> ();

for (Integer i =1 ; i<=leadCount;i++){   
    emptyList.add(firstName+lastName +'_'+ i+'@force.com');
}
for(String email:emptyList){
    System.debug(email);
}
/*
8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 
  4. Print out the first List 
  5. Print out the second List and it's size
*/
// TASK8
List<Integer> firstLis = new List<Integer>{1,2,3,4,5,6,7,8,9};
List<Integer> secoundLis = new List<Integer>();
for(Integer count: firstLis){
    if(count>=5 && count <=10){
        secoundLis.add(count);
    }
}
System.debug('the first list is:'+firstLis);
System.debug('The 2nd list is :'+secoundLis+' The 2nd list size is:'+secoundLis.size());
/*
9. Write a program that takes a list of strings that represent the names of account owners,
 and counts the number of times jon snow appears in the list.
*/
List<String> accountOwners = new List<String>{'Ali Alzuhairi','Jon Snow', 'Akbar ','Hyder Ayser','group2','Jon Snow'};

Integer countOfJon=0;
for(String each : accountOwners){
    if( each == 'jon Snow'){
    countOfJon++;
    }  
}
System.debug('How many times Jon Snow show in the list:'+countOfJon);
/*
10. Write a program that takes a list of integers that represent the amounts of
 money spent by a set of users, and calculates the number of users who spent more than 
 a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 
*/
//TASK 10 
Integer whoSpendLot=0;
List<Integer> spendMoney = new List<Integer>{10000,2000000,2323,17700,500,9844,7845,75782,100};
for(Integer count:spendMoney){
    if(count>=10000){
        whoSpendLot++;
    }
}
System.debug('The Numbers of users who spent more than 10000 is :'+ whoSpendLot);
