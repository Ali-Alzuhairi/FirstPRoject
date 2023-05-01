// Create a List of Decimal and add 5 values in it
// iterate over each item and print it out
List<Decimal> prices = new List<Decimal>{ 9.99, 2.59, 3.14, 10.5 };
for (Decimal eachPrice : prices) {
  System.debug('The Price is: ' + eachPrice);
}
// optionally, create a variable outside of your loop called sum
// then use your for each loop to get the sum of all decimal numbers

Decimal sum = 0;
for (Decimal eachPrice : prices) {
  sum += eachPrice;
}
System.debug('Sum is: ' + sum);
