//Task2.1
/**
      Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'

 in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood'
    
      */

Boolean isBaby1Laughing = true, isBaby2Laughing = true;
if (isBaby1Laughing && isBaby2Laughing) {
  System.debug('Both laughing');
} else if (isBaby1Laughing) {
  System.debug('Only the first baby laughing');
} else if (isBaby2Laughing) {
  System.debug('Only the second baby laughing');
} else {
  System.debug('No babies are laughing');
}
if (isBaby1Laughing == isBaby2Laughing) {
  System.debug('Both in the same mood');
} else {
  System.debug('Not in a same mood ');
}

//Task5
/**
    Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualifications', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0

   - at the end Print out message 'Stage is X and probability Percentage is X %'
     */
String opportunityStage = 'Need Analysis';
Decimal probabilityPercentage;
if (opportunityStage == 'Prospecting') {
  probabilityPercentage = 0.1;
} else if (opportunityStage == 'Qualifications') {
  probabilityPercentage = 0.2;
} else if (opportunityStage == 'Need Analysis') {
  probabilityPercentage = 0.3;
} else if (opportunityStage == 'Closed Won') {
  probabilityPercentage = 1.0;
} else if (opportunityStage == 'Closed Lost') {
  probabilityPercentage = 0;
}
System.debug(
  'State is ' +
    opportunityStage +
    ' and probability Percentage is ' +
    probabilityPercentage +
    '%'
);
