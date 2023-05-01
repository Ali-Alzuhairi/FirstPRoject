BankAccount b1 = new BankAccount();
b1.accountHolder = 'Ali';
b1.accountNumber = 123456789;
b1.balance = 5000000;

b1.showDetails();

System.debug('b1.getBalance() is : ' + b1.getBalance());
// b1.getBalance() is : 5000000

b1.deposit(5000.1);
System.debug('b1.getBalance() value is : ' + b1.getBalance());
// b1.getBalance() value is : 5005000.1

b1.deposit(-500000);
// INVALID NUMBER!!!!

b1.withdraw(200000);
System.debug('b1.getBalance() value is : ' + b1.getBalance());
// b1.getBalance() value is : 4805000.1

b1.withdraw(50000000);
// CAN NOT WITHDRAW THE MONEY YOU DO NOT HAVE

System.debug('------------------');

BankAccount b2 = new BankAccount();
b2.setupAccount('Christina', 987654321, 1000000);
b2.showDetails();
//Account Holder name: Christina, Number : 987654321, Balance : 1000000
b2.deposit(1000000);

System.debug('b2.getBalance() value is : ' + b2.getBalance());
b2.deposit(-200); //INVALID NUMBER!!!!
b2.withdraw(500000);
System.debug('b2.getBalance() value is : ' + b2.getBalance());
// b2.getBalance() value is : 1500000
b2.withdraw(3000000);
// CAN NOT WITHDRAW THE MONEY YOU DO NOT HAVE

b2.changeName('Christina 2.0');

