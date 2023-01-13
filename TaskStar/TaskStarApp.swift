//
//  TaskStarApp.swift
//  TaskStar
//
//  Created by amalghurm on 15/06/1444 AH.
//

import SwiftUI

 @main
struct TaskStarApp: App {
    let persistenceController = PersistenceController.shared
   
    var body: some Scene {
        WindowGroup {
         //   ContentView()
         //   Achivment_()
            EnterPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
