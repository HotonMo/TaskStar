//
//  TasksModel.swift
//  TasksStar
//
//  Created by hoton on 18/06/1444 AH.
//

import Foundation


struct TasksModel : Identifiable , Codable {
    let TaskName: String
    let  CheckTask :Bool
    let id : String
    let date = Date()
    
    // Not repetaed current data
    init(TaskName: String, CheckTask: Bool, id: String = UUID().uuidString) {
        self.TaskName = TaskName
        self.CheckTask = CheckTask
        self.id = id
    }
    
    func UpdateTaskModel() -> TasksModel{
        return TasksModel(TaskName: TaskName, CheckTask: !CheckTask, id: id)
    }
}
