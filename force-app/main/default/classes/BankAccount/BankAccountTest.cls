@isTest
private class BankAccountTest {

  //sort cut for below code (tm)
  @isTest
  static void testGetBalance() {
    // Arrange
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

    Decimal expected = 8000000;
    // Act
    Decimal actual = b1.getBalance();
    // Assert
    System.assertEquals(expected, actual);

    // call the no para, constrictor and show details method for test
    BankAccount b2 = new BankAccount();
    b2.showDetails();
  }


  @isTest
  static void testDeposit() {
   
     // Arrange
     BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

     //act
     b1.deposit(1000);

     //Assert
     //Assert the balance is now 8001000
     Decimal expected = 8001000;
     Decimal actual = b1.getBalance();

     System.assertEquals(expected,actual);
      

     // ack
     // do not mix different scenarios in same test 
     // ideally put it in it's own test method 
     b1.deposit(-1000);
     System.assertEquals(expected,actual);
     
  }

  @isTest
  static void testWithdraw(){
    
     // Arrange
     BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

     // Act
     b1.withdraw(1000000);

     // Assert 
     // shortcut for below code is (aae)
     Assert.areEqual(7000000,b1.Balance);
     
     
  }

  @isTest
  static void testSetupAccount(){
    

     // Arrange
     BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

     // Ack
     b1.setupAccount('Test', 123456, 1000);

     // Assert

    Assert.areEqual('Test',  b1.accountHolder );
    Assert.areEqual(123456,  b1.accountNumber );
    Assert.areEqual(1000,    b1.balance       );
 
  }
@isTest
static void testChangeName(){
  
  // Arrange
  
  BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

  // Act 
  b1.changeName('leke');

  // Assert 
  Assert.areEqual('leke',b1.accountHolder);
  
  //Assert.areEqual(expected,actual);
}

}
