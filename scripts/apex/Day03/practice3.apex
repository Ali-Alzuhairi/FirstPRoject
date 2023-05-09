// create a variable :
// annualRevenue as Integer and initialize it's value 
//rating as String 

/*If the annualRevenue Greater then 10000
assign the value or rating to hot 
otherwise assign the value of rating to cold 
printing out the rating variable out side your if statement 

*/
/*
integer annualRevenue = 45000;
String rating ;

if  (annualRevenue > 10000){
rating = 'Hot';

}else {

rating = 'cold';
}
System.debug('Rating is : '+ rating);

*/


Integer annualRevenue = 5000;


String  rating = (annualRevenue > 100000 ) ? 'Hot' : 'Cold';


System.debug('Rating is: '+ rating);




Integer score1 = 67 ; 


String examResult = (score1>66) ? 'PASS' : 'FAIL'  ; 


System.debug('Exam Result : ' + examResult);



// declare and initialize a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15

Integer salary= 200000;

Double taxRate= (salary> 100000)? 0.3 : 0.15 ;

System.debug('the tax rate is :' + taxRate);



// if the score is less than 0 or more than 100 
// print invalid score 
// else 
// print valid score 


//Integer score2 = 77 ; 
/*
if( score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else{
    System.debug('Valid score');
}
*/
Integer score2 = 67 ;
if( score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else if  ( score2>90 ){
    System.debug('You Got A');
} else if ( score2>80 ){
    System.debug('You Got B');
}else if ( score2>70 ){
    System.debug('You Got C');
}else{
    System.debug('Try harder');
}


// declare a String variable called season 

String season = 'summer';

if (season =='spring'){
    System.debug('Camping');
}else if (season== 'fall'){
    System.debug('pick pumpkin');
}else if (season =='winter'){
    System.debug('Go sleep');
}else if (season =='summer'){
    System.debug('Swimming');
}else {
    System.debug('invalid season');
}




