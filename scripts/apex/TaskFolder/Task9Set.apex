/**                      02/23/2023
1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
 */
//TASK1
String name = 'Ali Alzuhairi';

System.debug('name.toUpperCase() value is : ' + name.toUpperCase());
System.debug('name.toLowerCase() value is : ' + name.toLowerCase());
System.debug('name.indexOf(\' \')value is : ' + name.indexOf(' '));
System.debug('first char of first and last name together: ' + name.left(1) + name.mid(4, 1));
/**
2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out
 */
//TASK2
String[] teamList = new List<String>{
  'Developer',
  'HR',
  'QA Team',
  'Admin',
  'Fullstack Dev',
  'Support',
  'Sales',
  'Help Desk',
  'mentors',
  'Tech'
};
Integer countOfStr = 0;

for (String each : teamList) {
  if (each.length() > 5) {
    countOfStr++;

    System.debug('teamMoreThan5 value is : ' + each);
  }
}
System.debug('countOfStr value is : ' + countOfStr);
/**
3. Create a List of 10 String
   - get the count of String even character count
   - print them out
   anagrams words contain the same letters in a different order
for example : late , tale , teal
 */
//TASK3
String[] carList = new List<String>{
  'Acura',
  'Nissan',
  'Toyota',
  'M-Benz',
  'BMW',
  'Ferrari',
  'RangeRover',
  'RollsRoyce',
  'Bentley',
  'Porsche'
};
Integer count = 0;
String words = '';

for (String each : carList) {
  if ((Math.mod(each.length(), 2) == 0)) {
    count++;

    System.debug('Even character count ' + each);
  }
  if (each.contains('r')) {
    words += each + ' , ';
  }
}
System.debug('anagrams words with same letter is : ' + words);
/**
4. Write a program that 
   - create two string variables with values
   - print 'Its not anagram!!' they are the same' if they are equal
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other
 */
//TASK4
String str1 = 'car', str2 = 'carPrice';

if (str1.equalsIgnoreCase(str2)) {
  System.debug('Its not anagram!!\' they are the same');
} else if (str1.containsOnly(str2) && str2.containsOnly(str1)) {
  System.debug('Its anagram!!!');
} else {
  System.debug('Its not anagram!!');
}
/**
5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters
 */
//TASK5
String emailAddress = 'AliSFDeveloper@gmail.com';

Integer i = emailAddress.indexOf('@');

System.debug('index of @ is: ' + i);

System.debug('part before @ is : ' + emailAddress.left(i).toUpperCase());

System.debug('Part is after @ is : ' + emailAddress.mid(i, emailAddress.length()));

System.debug('last 3 characters : ' + emailAddress.right(3));
/**
6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method
 */
//TASK6
String myName = 'all star ranger';
System.debug('myName.length() value is : ' + myName.length());

Integer lastChart = myName.length() - 1;

System.debug('Last character index is : ' + lastChart);
System.debug('Index of second character from the last is : ' + (lastChart - 1));

List<String> newList = myName.split(' ');

Integer count = 0;
for (String each : newList) {
  if (each.containsIgnoreCase('a')) {
    count++;
  }
}

System.debug('count of a is : ' + count);
System.debug('myName.countMatches value is : ' + myName.countMatches('a'));

/**
7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result
 */
//TASK7
String str = 'i will reach all star ranger one day';
String[] newList = str.split(' ');

System.debug('count in sentence value is : ' + newList.size());

String reversWorld = '';
for (String each : newList) {
  reversWorld += each.reverse() + ' ';
}
System.debug('reversedWord value is : ' + reversWorld);

/**
8. Create a String with a long sentence
   - split the sentence to get word list 
   - create a variable called longestCharCount
   - assign it's value to first item length
   - loop through each item 
   - use Math.max(longestCharCount, each.length() )
   - outside your loop , print to see the result of longestCharCount
 */
//TASK8
String sent = 'everything is possible the impossible just takes longer';
String[] splitStr = sent.split(' ');

Integer longestCharCount = splitStr.get(0).length();

for (String each : splitStr) {
  longestCharCount = Math.max(longestCharCount, each.length());
}
System.debug('longestCharCount value is : ' + longestCharCount);

/**
9. Create a String variable with the value 
   - check if the value is palindrome or not 
   - palindrome read the same from forward or backward 
   - for example anna , hanna , racecar, mom
   - do case-sensitive check!
 */
//TASK9
String name = 'DAD';

if (name.contains(name.reverse())) {
  System.debug('It\'s Palindrome');
}else{
  System.debug('Not Palindrome'); 
}

/**
10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not, set isAllPalindrome to false
      - else take no action (so no else)
 */
//TASK10
String[] motivate = new List<String>{ 'Believe', 'We', 'Can', 'Do', 'It' };

Boolean isAllPalindrome = true;

for (String each : motivate) {
  if (!(each.contains(each.reverse()))) {
    isAllPalindrome = false;
  }
}
System.debug('isAllPalindrome value is:' + isAllPalindrome);