/**
1. Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result
 */
//TASK1
Double ranNumber = Math.random() * 100;
System.debug('ranNumber value is : ' + ranNumber);
if (ranNumber > 65) {
  System.debug('Pass');
} else if (ranNumber > 95 && ranNumber < 100) {
  System.debug('A+');
}
/**
2. Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'
 */
//TASK2
Double ranNumber = Math.random() * 100;
System.debug('ranNumber value is : ' + ranNumber);

Integer i = ranNumber.intValue();

if (Math.mod(i, 2) == 0)
  System.debug('even number!!!');

if (Math.mod(i, 5) == 0)
  System.debug('cool number');

if (Math.mod(i, 7) == 3)
  System.debug('cooler number');
/**
3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out 
 */
//TASK3
List<Integer> numList = new List<Integer>{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
Integer sum = 0, count = 0;
for (Integer i : numList) {
  if (Math.mod(i, 2) == 1) {
    System.debug('i value is : ' + i);
    count++;
    sum += i;
  }
}
System.debug('count value is : ' + count);
System.debug('sum value is : ' + sum);
/**
4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value
 */
//TASK4
Double dbl1 = Math.random() * 100, dbl2 = Math.random() * 100;
Integer num1 = 0, num2 = 0;

num1 = dbl1.intValue();
num2 = dbl2.intValue();
System.debug('num1 value is : ' + num1);
System.debug('num2 value is : ' + num2);
System.debug('Larger number value: ' + Math.max(num1, num2));
/**
5. Write an Apex code that 
   - print 10 random Integer values between 1-1000 in 10 lines (loop)
 */
//TASK5
// Double rdNum = Math.random()*1000;
// Integer num = rdNum.intValue();

for (Integer i = 0; i <= 10; i++) {
  Double rdNum = Math.random() * 1000;
  System.debug('num ' + i + ' value is : ' + rdNum.intValue());
}
/**
7. - Create a List of 10 String with your own values
   - create a Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
 */
//TASK7
List<String> teamList = new List<String>{
  'Developer',
  'HR',
  'QA Team',
  'Admin',
  'Fullstack Dev',
  'Support Team',
  'Sales Team ',
  'Help Desk',
  'mentors',
  'Tech Support'
};
Integer randomIndex = (Math.random() * 10).intValue();
System.debug('index to print is : ' + teamList.get(randomIndex));
/**
8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assign largestValue to 
   - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again
 */
//TASK8
List<Integer> numList = new List<Integer>{
  21,
  4,
  45,
  89,
  144,
  34,
  550,
  66,
  3,
  83
};
Integer largestValue = numList.get(0);
for (Integer each : numList) {
  largestValue = Math.max(largestValue, each);
}
System.debug('largestValue is : ' + largestValue);
/**
9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
   - create a variable called smallestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assign smallestValue to 
   - the result of Math.min(smallestValue, each)
   - print out smallestValue outside the loop
   - and that's how we can get min values in List of Integers
   - try to change the values of List item and run again 
 */
//TASK9
List<Integer> numList = new List<Integer>{
  21,
  4,
  2,
  89,
  144,
  34,
  550,
  66,
  3,
  83
};
Integer smallestValue = numList.get(0);
for (Integer each : numList) {
  smallestValue = Math.min(smallestValue, each);
}
System.debug('smallestValue is : ' + smallestValue);
