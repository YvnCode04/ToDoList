//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 10/06/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure() 
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
