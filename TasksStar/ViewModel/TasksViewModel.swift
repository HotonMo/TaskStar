//
//  TasksViewModel.swift
//  TasksStar
//
//  Created by hoton on 18/06/1444 AH.
//

import Foundation
import SwiftUI

class TasksViewModel : ObservableObject {
    @AppStorage("Stars") var stars = 0
    @AppStorage("progress") var ProgressBarValue = 0
    @Published var TaskList : [TasksModel] = []
    {
        didSet {saveTasks()} // if any update happended this will called
    }

    let TaskKey: String = "Tasks_List_Key"
    
    init() {
        getTasks()
//        DefaultTasks()
    }
    
    func getTasks(){
        guard
            let data = UserDefaults.standard.data(forKey: TaskKey),
            let savedTasks = try? JSONDecoder().decode([TasksModel].self, from: data)
        else {return}
        self.TaskList = savedTasks
    }
    
    
    func UpdateTask(task: TasksModel){
        if let index = TaskList.firstIndex(where:{$0.id == task.id}){
            TaskList[index] = task.UpdateTaskModel()
            ComplatedTaskProgress(IsCompleated: task)
            
        }
    }
    
    
        func saveTasks(){
            if let encodeData = try? JSONEncoder().encode(TaskList) {
                UserDefaults.standard.set(encodeData, forKey: TaskKey)
            }
        }
        
        
    func ComplatedTaskProgress(IsCompleated : TasksModel) {
        
        let CompleatedCheck = IsCompleated.CheckTask
      
        if (ProgressBarValue < 5 && CompleatedCheck == false)
        {
            ProgressBarValue += 1
            stars += 10
            print("progress : \(ProgressBarValue)")
            print( "Stars :\(stars)")
        }
        else if (ProgressBarValue > 0 && CompleatedCheck == true)
        {
            ProgressBarValue -= 1
            stars -= 10
            print("progress : \(ProgressBarValue)")
            print( "Stars :\(stars)")
        }
    }
    
    func DeleteDataNextDay(){
        
        
    }
  
    //    func DefaultTasks(){
    //        let newTask = [
    //            TasksModel(TaskName: "Brushing My teeth in the morning ", CheckTask: false),
    //            TasksModel(TaskName: "Cleaning My room", CheckTask: false),
    //            TasksModel(TaskName: "Eating My meal", CheckTask: false),
    //            TasksModel(TaskName: "Helping My Parents", CheckTask: false),
    //            TasksModel(TaskName: "Brushing My teeth before sleep", CheckTask: false)]
    //
    //        TaskList.append(contentsOf: newTask)
    //
    //
    //    }
}
