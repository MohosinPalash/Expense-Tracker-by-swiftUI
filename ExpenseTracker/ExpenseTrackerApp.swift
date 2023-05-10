//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 27/4/23.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    
    //Inject Database
    @StateObject private var dataController = ExpenseViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
