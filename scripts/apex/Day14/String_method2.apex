//method chaining
//calling one method after another method
//It's possible as long as the method you are calling
//is the method available from the Data type of returned value 

String str = 'cookie'; 
System.debug('str value is : ' + str); 

String result = str.toUpperCase().left(4).reverse(); 

System.debug('result value is : ' + result); 

/** 
## split(regExp)
Returns a list that contains each substring of the String that is terminated by either
the regular expression regExp or the end of the String.

Return a list contains each substring of the String is split
*/
String message = 'VA Weather is beautiful Today';
// split this sentence bu space so we can get list of string that contains words 
List<String> wordList = message.split(' ');
System.debug('wordList value is : ' + wordList); 
for(String each : wordList) {
       System.debug('Current value : ' + each + ' : length is ' + each.length());
}

String name = 'Mario cruz';
List<String> charList = name.split('');
System.debug('charList value is : ' + charList); 