


Set<Integer> targets =new Set<Integer>();

targets.add(100);
targets.add(100);
targets.add(100);
targets.add(200);
targets.add(200);
targets.add(200);

System.debug(targets);
System.debug('count of items is : '+targets.size());

System.debug('---------------------------------');

Set<String> letters = new Set<String>{'A','A','A','B','B','B','C','C','C','D'}; 

//print out the entire set 
System.debug(letters);
//printout the size
System.debug('letter count is : '+letters.size());
//use for each loop tp print out each items
for(String eachLetter: letters){
    System.debug(eachLetter);
}


