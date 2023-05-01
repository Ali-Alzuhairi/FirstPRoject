/**                    02/15/2023
                   
1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 print them out using both for loop or for each loop.
 */
 //TASK1
List<String> namesList = new List<String>();
namesList.add('Ali');
namesList.add('Hyder');
namesList.add('Akbar');
namesList.add(1, 'Abbas');
namesList.add(1, 'Ahmed');
namesList.add(1, 'kevin');

for (String each : namesList) {
  System.debug('Name List is : ' + each);
}
/**
2. Write an Apex code to create a List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1
 */
//TASK2
List<String> itemsList = new List<String>{ 'item1', 'item2', 'item3', 'item4' };
System.debug('itemsList value now is: ' + itemsList);
itemsList[itemsList.size() - 1] = itemsList[0];
System.debug('itemsList value after is: ' + itemsList);
/**
3. Write an Apex code to create a List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4 
 */
 //TASK3
List<String> students = new List<String>{
  'Ali Alzuhairi',
  'Hyder Ayser',
  'Abbas Mollaye',
  'Marina Lugova',
  'Dildora Ata',
  'Jon snow'
};
if (!(students.contains('Jon snow'))) {
  students.add(4, 'Jon snow');
} else {
  students.remove(students.indexOf('Jon snow'));
  students.add(4, 'Jon snow');
}
System.debug('students value is : ' + students);
/**
4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man',
 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
- Find the count of times 'Iron Man' showed up 
 */
//TASK4
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
Integer sumOF = 0;
for (String each : heroList) {
  if (each == 'Iron Man') {
    sumOF++;
  }
}
System.debug('count of Iron Man showed up in the List ' + sumOF);
/**
5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. 
 */
 //TASK5
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
List<Integer> newList = new List<Integer>();

for (Integer i = 0; i < heroList.size(); i++) {
  if (heroList.get(i) == 'Iron Man') {
    System.debug('All index of Iron Man is ' + i);
    newList.add(i);
  }
}
System.debug('newList value is : ' + newList);
System.debug('The size of newList is: ' + newList.size());
/**
6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
 - if so find index of each Iron Man and remove from the list
 */
 //TASK6
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
Integer index = 0;
while (index < heroList.size()) {
  if (heroList.contains('Iron Man')) {
     heroList.remove(heroList.indexOf('Iron Man'));
  }
  index++;
}
System.debug('The List after Iron Man removed '+heroList); 
/**
7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30
 */
 //TASK7
Double[] numbers = new Double[10]{};
numbers[0] = 69.322d;
numbers[1] = 49.322d;
numbers[2] = 13.32d; 
numbers[3] = 23.32d;
numbers[4] = 17.322d;
numbers[5] = 25.322d;
numbers[6] = 53.322d;
numbers[7] = 3.22d;
numbers[8] = 13.2d;
numbers[9] = 14.322d;

Integer countof = 0;
for (Double each : numbers) {
  if ((each > 10 && each < 20) || (each > 40 && each < 50)) {
    countof++;
  }
}
System.debug(
  'The count of the number is between 10 and 20 or 40-50 is:' + countof
);
Double sum = 0;
for (Double each : numbers) {
  if (each > 30) {
    sum += each;
  }
}
System.debug('The sum of the numbers greater than 30 is: ' + sum);
/**
8. Create an String Array with 10 elements and print them in reverse order
 */
 //TASK8
String[] elements = new String[]{'AA','BB','CC','DD','EE','FF','GG','HH','II','JJ'};
for(Integer i = elements.size()-1; i >=0; i--){
System.debug(elements.get(i)); 
}
/**
9. Create an Boolean Array with 10 Boolean and count the number of true value
 */
Boolean[] values = new Boolean[]{true,false,true,true,false,false,false,true,false,true};
Integer count=0;
for(Boolean each : values) {
  if( each == true ){
    count++;
  }
}
System.debug(count); 
 /**
10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5 
 */ 
 //TASK7
Integer[] numArry = new Integer[]{1,21,50,45,510,99,10,4,45,555};
  if(numArry.contains(10) && numArry.contains(5) ){
    System.debug('ideal numbers'); 
  }else if(numArry.contains(10)  ){
      System.debug('Good numbers');
  }else if(numArry.contains(5) ){
    System.debug('OK numbers');
  }else{
    System.debug('Not so Good numbers'); 
  } 