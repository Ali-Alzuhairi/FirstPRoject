

/**

Create a varible called starCount initilize it to 0 
use loop to print out below 
0 star ranger 
1 star ranger 
2 star ranger 
3 star ranger 
4 star ranger 
5 star ranger 
6 star ranger 

 */
 Integer starCount= 0;
/*
 while (starCount<=6){
    System.debug(starCount +' star ranger');
    starCount ++;
 }
/*
 do{
   
    System.debug (starCount + ' star ranger');
    starCount++;
 } while (starCount<=6);
 */   
  while( starCount <= 6){

    if(starCount==0){
        System.debug('Almost There to 1 star');

   }else if (starCount==6){
        System.debug('All Star ranger ');
   }
    else{
        System.debug(starCount + ' star ranger') ; 
    }
    
    starCount++ ; 
 
 }

Integer muffin =20;
// while (muffin>=0){
//     if(muffin>10){
//         System.debug('muffin count is :'+muffin);
//     }else {
//         System.debug('muffin count is '+muffin+' i\'m getting full');
//     }
//     muffin-=2;    
// }

/**
Declare and initialize variable muffin
Countdown from 20 -> 0 

// if the number is greater than 10 
    // print out first half : muffin count is XX
    // decrease the muffin by 3 
// else 
    // print out second half : muffin count is XX
    // decrease the muffin by 2 
*/

while (muffin>=0){

if (muffin>10){
    System.debug('first half : muffin count is: '+ muffin);
    muffin -=3;
}else{
    System.debug('second half : muffin count is: '+ muffin);
    muffin-=2;
}
}



