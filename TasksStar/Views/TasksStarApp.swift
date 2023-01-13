//
//  TasksStarApp.swift
//  TasksStar
//
//  Created by hoton on 17/06/1444 AH.
//

import SwiftUI

@main
struct TasksStarApp: App {
    
    @StateObject var taskViewModel : TasksViewModel = TasksViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                TasksPageView()
            }.environmentObject(taskViewModel)
        }
    }
}
