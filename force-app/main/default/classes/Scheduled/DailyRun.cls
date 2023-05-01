/** 
Schedulable is interface that comes from Apex
it has single abstract method execute
If class implements Schedulable interface
it can be scheduled to run at certain interval
directly from SF setup or with code
*/

public class DailyRun implements Schedulable{

     public void execute(SchedulableContext context){

        // create an account everyday
        Account a = new Account (Name ='Acc from Scheduled code');
        insert a ; 

        EmailManager.sendMail(UserInfo.getUserEmail(), 'New Account inserted', 'inserting from scheduled apex ');
    }

    

}