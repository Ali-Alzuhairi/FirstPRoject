/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 
System.debug('message value is : ' + message); 

//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_contains

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   

 */

 System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
 System.debug('message.contains(\'hello\')  value is : ' + message.contains('hello') ); 
 System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') ); 

/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello') ); 
/**
containsNone(inputString)
Returns true if the current String doesn’t contain any of the characters in the specified String; otherwise, returns false.
 */
System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo')   ); 

System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB')   ); 

System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO')   ); 

System.debug('message has no Number : ' + message.containsNone('0123456789')   ) ; 

/*
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence 
of characters and not any other characters; otherwise, returns false.
*/
System.debug('message.containsOnly(\'Helo Wrd\') value is :'+message.containsOnly('Helo Wrd')); 

System.debug('message.containsOnly(\'He\') value is :'+message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 

String text = 'aaaaoooeee'; 
System.debug('text variable value is : ' + text); 

// check if this text only contains vowel : a e i o u  
System.debug('text.containsOnly(\'aeiou\') value is : ' + text.containsOnly('aeiou')  ); 

System.debug('-----------Equality--------------'); 
System.debug('is message == Hello World ' +   (message =='Hello World')); // true
System.debug('is message == hello world ' +   (message =='hello world')); // true

// equals (anotherString) method for checking equality in case sensitive manner

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence 
of characters as the String that called the method, ignoring case. 
This is literally the method version of ==
*/

System.debug('message.equalsIgnoreCase(\'hello world\') value is : '
                          + message.equalsIgnoreCase('hello world')); //true

/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '_') ; 
System.debug('joinedText value is : ' + joinedText);


String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str);