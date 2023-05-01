
//Task1
Integer num1=40,num2=50;
if (num1>num2){
    System.debug('The Bigger number is :' + num1);
}else{
    System.debug('The Bigger number is :' +num2);
}

//Task2
Integer S1=50,S2=20,S3=30;
if (S1<S2 && S1<S3){
    System.debug(S1 +' is the smallest number ' );
}else if (S2<S1 && S2<S3){
    System.debug(S2 + ' is the smallest number ');
}else {
    System.debug (S3 + ' is the smallest number ');
}

//Task3

Boolean isBaby1Laughing= true, isBaby2Laughing=false;
 if (isBaby1Laughing && isBaby2Laughing){
    System.debug('Both laughing');
}else if (isBaby1Laughing){
    System.debug ('Only the first baby laughing');
}else if (isBaby2Laughing ){
    System.debug ('Only the second baby laughing');
}else {
    System.debug ('No babies are laughing');
}
    if (isBaby1Laughing == isBaby2Laughing){
        System.debug('Both in the same mood');
    }else {
        System.debug ('Not in a same mood ');
    }
          
//Task4
String caseStatus= 'New';
switch on caseStatus{
    when 'New'{
        System.debug('Case need attention');
    }
    when 'Working'{
        System.debug ('Case in progress');
    }
    when 'Escalated'{
        System.debug ('Case need to be reassigned and manager need to be notified');
    }  
    when 'Closed'{
        System.debug ('Case has been resolved') ; 
}
    when else {
        System.debug ('Nothing match, invalid case status');
    }
    }
    
    


//Task5
String opportunityStage = 'Closed Won';
Decimal probabilityPercentage;
 if  (opportunityStage == 'Prospecting'){
    probabilityPercentage= 0.1;
 }else if (opportunityStage == 'Qualificationn'){
    probabilityPercentage= 0.2;
 }else if (opportunityStage == 'Need Analysis'){
    probabilityPercentage= 0.3;
 }else if (opportunityStage == 'Closed Won'){
    probabilityPercentage= 1.0;
 }else if (opportunityStage == 'Closed Lost'){
    probabilityPercentage= 0;
 }
    System.debug ('States is '+opportunityStage+' and probability Percentage is '+probabilityPercentage);




//Task6
// i Did not DO this 


//Task7

String casePriority = 'Low';
Boolean isTierOneCustomer = false ; 

if (isTierOneCustomer){
    System.debug('Tier 1 Customer, handle within 1 hour ');
}else {
    // nested if statement 
    if (casePriority=='High' || casePriority=='Critical'){
    System.debug('urgent case handle in 6 hours ');
    }else {
    System.debug('handle within 2 days');
    }
}


