public class BankAccount {
    // private fields are not accessible outside the class
    // in order to make it available for Test 
    // we can use @TestVisible annotation 
    // accountHolder, accountNumber, balance
    @testVisible 
    private String accountHolder; 
    @testVisible 
    private Integer accountNumber;
    // how to make your private available for you --> make it @testVisible
    @testVisible // this will make this available for test even when the method private
    private Decimal balance; 

    public BankAccount(){
        System.debug('Message from BankAccount 0 param constructor '); 
    }
    // constructor overloading (overloading means using same name with different parameter list)
    public BankAccount(String accountHolder,Integer accountNumber, Decimal balance ){
        this.accountHolder = accountHolder ; 
        this.accountNumber = accountNumber ; 
        this.balance       = balance ;  
    }


    // create a void method : showDetails
    // accept no parameters 
    // print the details of current object 
    // Account Holder name XX, Number : YY, Balance : ZZ 
    public void showDetails(){

        System.debug('Account Holder name: ' + accountHolder
                            + ', Number : '  + accountNumber
                            + ', Balance : ' + balance  );
    }


    // create a method called getBalance
    // accept no parameter 
    // simply return current balance
    public Decimal getBalance(){
        // DO SOME VERY COMPLEX CHECK 
        // BEFORE DOING BELOW RETURN IN REAL LIFE 
        return this.balance ; 
    }

    // create a void method called deposit
    // accept 1 Decimal parameter  
    // increase the balance by the number provided
    // minus(-) number should not be allowed 
    public void deposit(Decimal newMoney ){
        // complex operation goes here
        // avoid minus or 0 value 
        if ( newMoney > 0 ) {
           this.balance += newMoney ; 
           //this.balance =  this.balance + newMoney ; 
        }else {
            System.debug('INVALID NUMBER!!!!');   
        }

    }
    // create a void method called withdraw
    // accept 1 Decimal parameter  
    // decrease the balance by the number provided
    // CAN NOT WITHDRAW THE MONEY YOU DONT HAVE 
    public void withdraw(Decimal money){

        if(this.balance >= money ){
            this.balance -= money ; 
        }else {
            System.debug(' CAN NOT WITHDRAW THE MONEY YOU DO NOT HAVE '); 
        }
    }

    // create a void method called setupAccount
    // accept 3 parameters for 
    // assign value to 3 instance fields   
    public void setupAccount(String holder, Integer num, Decimal balance){

        this.accountHolder = holder  ; 
        this.accountNumber = num  ; 
        this.balance       = balance ; 

    }

    // create a void method called changeName
    // accept 1 parameters for 
    // (re)assigning the name filed value  
    public void changeName(String newName){
        this.accountHolder = newName ; 
    }




}