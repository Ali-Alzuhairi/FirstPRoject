//SOQL is a language which helps us to get the data


List<Account>allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];

for(Account each : allAccounts) {
    System.debug('Current value : ' + each);
}