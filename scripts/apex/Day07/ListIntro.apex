/**
Collection : for storing more than one values
There are 3 types of collection

List
Set
Map
 */

 //Syntax for creating a list variable
 // and initializing it's value

//  List<DataType> nameOfYourVariable = new List<DataType> ();

 List<String> studentName = new List<String>();

 // we can use yourListVarible.add(what you want to add here);
 //to add elements into the List
 studentName.add ('Nurzat');
 studentName.add ('Ali');
 studentName.add ('Esra');

 System.debug(studentName);

 





List<Integer> scores = new List<Integer>() ;

scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
scores.add(500);

System.debug(scores);


List<Decimal> prices = new List<Decimal>() ;

prices.add(9.99);
prices.add(19.99);
prices.add(29.87);
prices.add(11000.54);

System.debug(prices);