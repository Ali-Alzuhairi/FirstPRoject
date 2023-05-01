/**
Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print end with what we started 
   else print different beginning and ending 
    HINT : No Loop Needed Here
 */
 //TASK1
 List<Double> Desnumbers = new List<Double>{1.00,2.20,3.50,4.66,2.99,
                                            9.99,6.87,19.99,99.99,1.00};
if(Desnumbers.get(0) == Desnumbers.get(Desnumbers.size()-1)){
  System.debug('end with what we started');
}else{
  System.debug('different beginning and ending');
}
 /**
2. Write a program that store List of long with 10 items 
with positive and negative numbers and print out 
all positive values using for loop try using the continue instead.
 */
 //TASK2

List<Long> numbers = new List<Long>{231333L,-12312414L,12241246,-8763354L,9776544L,
                                    6378235L,3598673L,-8456161L,9875134L,-879135L};
    for(Integer count=0;count<numbers.size();count++ ){
        if(numbers.get(count)>0){    
             System.debug('positive Numbers is :'+numbers.get(count));
             continue;
        }
    }
 /**
3. Write a program that store List of Integer with 10 items and try to get the sum of values,
  break out of the loop if the sum is greater than 100
 */
//TASK3
Integer sumOfint = 0;
List<Integer> nums = new List<Integer>{ 19, 25, 30, 4, 9, 7, 8, 5, 9, 16 };
for (Integer index : nums) {
  sumOfint += index;
  if (sumOfint >= 100) {
    break;
  }
  System.debug(' The sum now is:' + sumOfint);
}
/**
4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99
 */
//TASK4
List<Double> numbers = new List<Double>{
  1.2,
  3.14,
  9.99,
  23.50,
  49.99,
  2.1,
  5.6,
  76.88,
  99.99,
  12.50
};
for (Integer i = 0; i <= numbers.size(); i++) {
  if (numbers.get(i) >= 50.5 && numbers.get(i) <= 99.99) {
    break;
  }
  System.debug(numbers.get(i));
}
/**
5. Write a program that create List of Id with 10 items and use 2 different loop
 (for loop and for each loop )to print out all value for practice 
  - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop
 */
//TASK5
List<Id> users = new List<Id>{
  '003Dn000009y5tJIAQ',
  '001Dn000009y5tQIAQ',
  '003Dn000009y5tTIAQ',
  '003Dn000009y5tRIAQ',
  '003Dn000009y5tSIAQ',
  '003Dn000009y5tWIAQ',
  '003Dn000009y5tHIAQ',
  '001xx000009y5tHIAQ',
  '003Dn000009y5tTIAQ',
  '003Dn000009y5tIIAQ'
};
for(Integer i = 0 ; i < users.size();i++){
 System.debug('Current ID value : '+users.get(i));
}
System.debug('-------------------------');
//Option2 for each 
for(Id x : users){
    System.debug('Current ID value : '+x);
    if (x =='003Dn000009y5tSIAQ'){
        break;
    }
}
/**
6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end 
 */
//TASK6
//Option1 for each
List<Integer> nums = new List<Integer> {1,2,3,4,5,6,7,68,19,10};
for(Integer i : nums){
    if(i>5){
        System.debug(i);
    }
}
System.debug('-----OPTION2------');
// Option2 for
for ( Integer i =0; i <nums.size();i++){
    if(nums.get(i)>5){
        System.debug(nums.get(i));
    }
}
/**
  Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 number that are more than 5
 */
//TASK7
List<Integer> level = new List<Integer>{ 50, 39, 2, 6, 3, 19, 20, 3, 1, 33 };
Integer count = 0;
for (Integer i : level) {
  if (i > 5)
    count++;
  if (count == 2)
    break;
}
System.debug(count);
/**
8. Write a program that create a list of strings and print the values 
that are not equal to "Salesforce", using a for loop and the continue keyword.
 */
//TASK8
List<String> companies = new List<String>{'Google','Amazon','Yahoo','Salesforce','LinkedIn','Salesforce'};
for(String x:companies){
    if(x=='Salesforce'){
        continue;
    }
    System.debug(x);
}
/**

9. Write a program that create a list of strings and print the values
 that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
 */
//TASK9
List<String> sfPositions = new List<String>{
  'Developer',
  'SF',
  'SF Admin',
  'Admin',
  'Fullstack Dev'
};
for (Integer i = 0; i < sfPositions.size(); i++) {
  if (sfPositions.get(i) == 'Developer' || sfPositions.get(i) == 'Admin') {
    continue;
  }
  System.debug('value ar index #'+i+' Is :'+sfPositions.get(i));
}
/**
 10. Write a program that create a list of strings with 10 values and get the 
 count of the items that are not equal to "Admin" or "Developer" using a for loop 
 and the continue keyword.
*/
//TASK10
List<String> sfEmployees = new List<String>{
  'Developer',
  'HR',
  'SOFT Skill',
  'Admin',
  'Fullstack Dev',
  'Support Team',
  'Sales Team ',
  'Help Desk',
  'mentors',
  'Tech Support'
};
for (Integer i = 0; i < sfEmployees.size(); i++) {
  if (sfEmployees.get(i) == 'Developer' || sfEmployees.get(i) == 'Admin') {
    continue;
  }
  System.debug(sfEmployees.get(i)); }

