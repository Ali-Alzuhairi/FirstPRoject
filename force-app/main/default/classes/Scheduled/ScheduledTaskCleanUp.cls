public class ScheduledTaskCleanUp implements Schedulable {
    
    public Void execute(SchedulableContext context){
        
        // List<Task> overdueTasks = [SELECT Id, Subject, ActivityDate, Status
        //                            FROM Task
        //                            WHERE ActivityDate< TODAY ];


        List<Task> updatedTasks = new List<Task>();

        for(Task each : [SELECT Id, Subject, ActivityDate, Status
                         FROM Task WHERE ActivityDate< TODAY ]) {
            
          each.Status = 'Completed';
          updatedTasks.add(each);  
        }

        if(!updatedTasks.isEmpty() ){
            update updatedTasks;
        }
        
    }
}