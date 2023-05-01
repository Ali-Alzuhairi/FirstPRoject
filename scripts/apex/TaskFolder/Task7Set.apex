/**
1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count
 */
 //TASK1
Integer[] numbersA = new List<Integer>{ 1, 2, 3, 4, 5, 6, 2, 3, 7, 4 };
Set<Integer> noDuplocate = new Set<Integer>(numbersA);
System.debug('numbers without duplicate ' + noDuplocate);
System.debug('unique items count is :' + noDuplocate.size());
System.debug('difference between total list and item count is:' +
  (numbersA.size() - noDuplocate.size()));
/**
2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into an Integer Array
   - print out the Integer Array
    */
//TASK2
List<Integer> numberList = new List<Integer>{
  90,
  79,
  29,
  25,
  32,
  11,
  22,
  33,
  32,
  54
};
System.debug('numberList value is : ' + numberList);
/**
in order to get the item at certain location , we need index 
in order to get last 3 item , we need index of those 3 
    last item            :  numberList.size() - 1     ==> 9 
    second from the last :  numberList.size() - 2     ==> 8 
    third from the last  :  numberList.size() - 3     ==> 7 
 */

Integer[] last3Items = new Integer[3];
last3Items[0] = numberList.get(numberList.size() - 3);
last3Items[1] = numberList.get(numberList.size() - 2);
last3Items[2] = numberList.get(numberList.size() - 1);
System.debug('last3Items value is : ' + last3Items);
/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out
 */
 Integer[]nums1 = new Integer[]{1,2,3,4,5,6,7,8,9,10};
 Integer[]nums2 = new Integer[]{};
 for(Integer i=nums1.size()-1; i>=0 ;i--) {
   nums2.add(nums1.get(i));
 }
System.debug('the reverse order for num2 '+ nums2); 
/**
4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop
 */
String[] nameList = new List<String>{
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
Set<String> nameSet = new Set<String>();
for (String each : nameList) {
  if (!(each.contains('Admin') || each.contains('Developer'))) {
    nameSet.add(each);
  }
}
System.debug('Set with out admin and developer is :' + nameSet);
System.debug('The set size is :'+nameSet.size()); 
/**
5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}
 */
 Integer[] numMulti = new Integer[]{2,4,6,20,10};
for(Integer i =0;i< numMulti.size();i++){
    numMulti[i]*= 2;
}
  System.debug('YourValueHere'+numMulti); 
/**

6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}
 */
String[] namess = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
for (integer i = 0; i < namess.size(); i++) {
  namess.set(i, namess.get(i) + ' ' + 'sf' + i);
}
System.debug('Value After Update ' + namess);
/**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'
*/
String[] strList = new String[]{'This','is','The','Way','Student'};
String joinedText= '';
for(Integer i=0; i<strList.size() ; i++) {
    String each = strList.get(i) ; 
    if(  i == strList.size()-1  ){
        joinedText += each; 
    }else{
        joinedText += each + '-' ; 
    }
 }
 System.debug('joinedText value is : ' + joinedText); 
 /**
8. Write an Apex code that create List or Array of 7 String values
   - store the the index of item in the middle in to variable mid1
   - now imagine you unknown (odd) number of items in the list and
    find out a way to dynamically find the index of item in the middle 
     - if you have 7 items : number 4 item is in the middle
     - if you have 17 items : number 9 item is in the middle and so on
     - no loop needed here
   - print out the value of item in the middle
*/
String[] strList= new String[]{'AAA','BBB','CCC','DDD','EEE','FFF','GGG'};
Integer mid1 = strList.size()/2;
System.debug('Middle index is '+mid1); 
System.debug('The value of the middle index is: '+strList.get(mid1)); 
/**
9. Write an Apex code that create List or Array of 8 String values
   - store the the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and 
   find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle
*/
String[] strList= new String[]{'AAA','BBB','CCC','DDD','EEE','FFF','GGG','HHH','III'};
Integer mid1 = strList.size()/2; 
Integer mid2 =mid1+1;
System.debug('The value in the middle is:'+strList.get(mid1)+','+strList.get(mid2)); 
/**
10.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method

 */
//TASK10
Set<Integer> countSet1 = new Set<Integer>{ 1, 2, 3, 7, 8 };
Set<Integer> countSet2 = new Set<Integer>{ 4, 7, 8, 9, 6 };
System.debug('countSet2 has countSet1 items : ' + countSet1.containsAll(countSet2));
System.debug('countSet1 has countSet2 items : ' + countSet2.containsAll(countSet1));
countSet2.addAll(countSet1);
System.debug('all items in set 2 exists in set 1: ' + countSet1.containsAll(countSet2));
System.debug( 'all items in set 1 exists in set 2: ' + countSet2.containsAll(countSet1));
countSet2.removeAll(countSet1);
System.debug('countSet2 value is : ' + countSet2);
/**
11.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
   -  HINT : retainAll method
 */
//TASK11
Set<String> strSet1 = new Set<String>{'AA','BB','CC','DD','EE'};
Set<String> strSet2 = new Set<String>{'EE','FF','HH','DD','II'};
strSet1.retainAll(strSet2);
System.debug('strSet1 value is : ' + strSet1); 
/**
12. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set 
 */
//TASK12
Set<Integer> numberSet = new Set<Integer>{ 82, 66, 51, 85, 75, 5, 7, 8, 9, 12 };
Integer average = 0;
Integer sum = 0;
for (Integer each : numberSet) {
  sum += each;
}
average = sum / numberSet.size();
System.debug('average value is : ' + average);
List<Integer> numList = new List<Integer>();
for (Integer each : numberSet) {
  if (each > average) {
    numList.add(each);
  } else {
    numberSet.remove(each);
  }
}
System.debug('numberSet value is : ' + numberSet);
System.debug('numList value is : ' + numList);
/**
13. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update
 */
//TASK13
List<Integer> scoreList = new List<Integer>{
  1,
  -15,
  3,
  4,
  -1,
  6,
  7,
  334,
  120,
  10
};
Integer numCount = 0;
for (Integer each : scoreList) {
  if (each < 0 || each > 100) {
    numCount++;
  }
}
System.debug('numCount value is : ' + numCount);
for (Integer each = 0; each < scoreList.size(); each++) {
  if (scoreList.get(each) < 0) {
    scoreList[each] = 0;
  } else if (scoreList.get(each) > 100) {
    scoreList[each] = 100;
  }
}
System.debug('scoreList value is : ' + scoreList);
/**
Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;
Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.
HINT : you need a temp variable for temporarily storing value of one number
 */
//TASK 7 Bonus 
Integer num1 = 10 ; 
Integer num2 = 20 ;
Integer temp = 0; // Empty box to store one Integer variable.
temp=num1;
num1=num2;
num2=temp;
System.debug('num1 value is : ' + num1); 
System.debug('num2 value is : ' + num2); 
