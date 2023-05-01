/**
https://developer.salesfo/docs/atlas.en-us.rce.comapexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod

Math class is a class coming from Apex itself 
It has a lot of ore-written code about math that we can just use directly
Mod operator in math allow you to get the remainder of division 
 
 10 / 3 = 3    1 remain
 */

Integer num1 = 10;
Integer num2 = 5;

Integer result = num1 / num2;
System.debug('result value is : ' + result);

// Math.mod(num1 , num2 ) ===>> remainder of the division
Integer remainder = Math.mod(num1, num2);
System.debug('remainder value is : ' + remainder);

/**
Odd or Even in Math 
Odd number is number that will have remainder of 1 when divided by 2 
Even number is number that will have remainder of 0 when divided by 2 

 */
Integer score = 5;
// store the result of checking the number is even or add into a boolean variable
Boolean isEven = Math.mod(score, 2) == 0;
System.debug('isEven value is : ' + isEven);
// print ad number if score is odd , and print even number if its even
if (isEven) {
  System.debug('Even Number');
} else {
  System.debug('Odd Number');
}
// what if we do not want to create a variable to store the result of even or odd

if (Math.mod(score, 2) == 0) {
  System.debug('Even Number');
} else {
  System.debug('Odd Number');
}

//Math.max(number1 , number2) ==> return the bigger number
System.debug('which number is bigger : ' + math.max(111, 99));

//Math.min(number1 , number2) ==> return the smaller number

System.debug('which number is smaller : ' + math.min(111, 99));

// Math.random()==>
// generate a positive double that is greater than or equal to 0.0 and less than 1.0

Double randomDbl = Math.random()*100;
System.debug('randomDbl value is: ' + randomDbl);

//System.debug('randomDbl value is: ' + randomDbl*100);

Integer randomInteger = randomDbl.intValue();
System.debug('randomInteger value is : ' + randomInteger); 