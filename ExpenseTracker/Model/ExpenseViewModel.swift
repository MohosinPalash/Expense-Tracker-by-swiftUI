//
//  ExpenseViewModel.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 8/5/23.
//

import Foundation
import CoreData

class ExpenseViewModel: ObservableObject {
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "ExpenseContainer")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error loading core Data \(error)")
            } else {
                print("Successfully fetched core data")
            }
            
        }
    }
}
