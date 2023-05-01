// creating a date variable and assigning the value to today's date
// today method of date class will return today's class
Date d1 = Date.today();
System.debug('d1 value is : ' + d1);

//Creating a date with any year , month , day

/**
newInstance(year, month, day)
Constructs a Date from Integer representations of the year, month (1=Jan), and day.
 */
Date d2 = Date.newInstance(1999, 9, 16);
System.debug('d2 value is : ' + d2);

/**
addDays(additionalDays)
Adds the specified number of additional days to a Date.
*/
date weekAfterD2 = d2.addDays(7);
System.debug('weekAfterD2 value is : ' + weekAfterD2);

date weekBeforeD2 = d2.addDays(-7);
System.debug('weekBeforeD2 value is : ' + weekBeforeD2);

/*
addMonths(additionalMonths)
Adds the specified number of additional months to a Date

try it on your own 

addYears(additionalYears)
Adds the specified number of additional years to a Date

try it on your own 

*/


