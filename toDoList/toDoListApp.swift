//
//  toDoListApp.swift
//  toDoList
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

@main
struct toDoListApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
