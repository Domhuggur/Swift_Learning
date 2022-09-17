import UIKit

class Task{
    var tasks = [String]()
    static var tasksIntroduced:Int = 0
    static var numberInstances = 0
    static var tasksCounter:Int = 0
    
    func giveMeTasksName(){
        for value in tasks{
            print ("Calling giveMeTaskName function -> The values of the tasks are: \(value)")
        }
    }
    func giveMeNumberTasksObject(){
        print("Calling giveMeNumberTasksObject function -> The value of the numbers of tasks in object are: \(Task.tasksIntroduced)")
    }
    func giveMeNumberTotalTasks(){
        //Task.tasksCounter = Task.numberInstances * Task.tasksIntroduced
        print ("Calling giveMeNumberTotalTasks function -> The tasksCounter variable value is: \(Task.tasksCounter)")
    }
    init(tasks:[String]){
        self.tasks = tasks
        Task.tasksIntroduced =  tasks.count
        Task.tasksCounter = Task.tasksIntroduced + Task.tasksCounter   
    }
}
print ("--- Object 1 ---")
var taskObject1 = Task(tasks:["washing clothes", "cleaning the house"])
taskObject1.giveMeNumberTasksObject()
taskObject1.giveMeNumberTotalTasks()
print ("--- Object 2 ---")
var taskObject2 = Task(tasks: ["studying"])
taskObject2.giveMeNumberTasksObject()
taskObject2.giveMeNumberTotalTasks()
print ("--- Object 3 ---")
var taskObject3 = Task(tasks: ["watering the plants", "shopping"])
taskObject3.giveMeNumberTasksObject()
taskObject3.giveMeNumberTotalTasks()
print ("--- Object 4 ---")
var taskObject4 = Task(tasks: ["study physics", "studying maths", "studying project management"])
taskObject3.giveMeNumberTasksObject()
taskObject3.giveMeNumberTotalTasks()


