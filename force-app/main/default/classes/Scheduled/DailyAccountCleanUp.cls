public class DailyAccountCleanUp implements Schedulable {

    public void execute(SchedulableContext Contact){

        // delete all Account Created Today 
        List<Account> todaysAccounts = [SELECT id FROM Account WHERE CreatedDate = TODAY];

        if(!todaysAccounts.isEmpty()){
        delete todaysAccounts;
        }
    }
    
}