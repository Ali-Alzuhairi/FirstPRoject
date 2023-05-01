// Task1
Integer num1 = 30, num2 = 20, num3 = 10;
if (num1 > num2 && num2 > num3) {
  System.debug('The first number is the largest');
} else {
  System.debug('The first number is not the largest');
}

//Task2
Integer numb = -2;
if (numb > 0) {
  System.debug('Positive');
} else if (numb < 0) {
  System.debug('Negative');
} else {
  System.debug('Zero');
}

//Task3
String vowelOrNot = 'k';

if (
  vowelOrNot == 'a' ||
  vowelOrNot == 'e' ||
  vowelOrNot == 'o' ||
  vowelOrNot == 'u' ||
  vowelOrNot == 'i'
) {
  System.debug('Vowel');
} else {
  System.debug('Not a Vowel! ');
}
//Task4

Integer opportunityAmount = 200000;
String stage = 'closed Won';
if (opportunityAmount >= 100000 && stage == 'closed won') {
  System.debug('High Priority Opportunity, follow up immediately');
} else {
  System.debug('create an task to follow up next week ');
}

//Task 5
String leadCompanySize = 'Small';
if (leadCompanySize == 'Small' || leadCompanySize == 'medium') {
  System.debug('Good Lead ');

  // We don't need else since there is no action need it after the first print out
}

//Task6
Long annualRevenue = 5000000;
Integer numberOfEmployees = 100;
if (annualRevenue > 1000000 || numberOfEmployees > 500) {
  System.debug('High Potential Account');
} else {
  System.debug('Not High Potential Account');
}

//Task7
Integer num4 = 47, num5 = 85, num6 = 99;
if (num4 > num5 && num4 > num6) {
  System.debug(num4 + 'is the largest');
} else if (num5 > num4 && num5 > num6) {
  System.debug(Num5 + 'is the largest ');
} else {
  System.debug(num6 + ' is the largest');
}
// What's going on?