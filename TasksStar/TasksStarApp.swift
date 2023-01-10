//
//  TasksStarApp.swift
//  TasksStar
//
//  Created by hoton on 17/06/1444 AH.
//

import SwiftUI

@main
struct TasksStarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
