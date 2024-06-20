//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import Foundation

/// ViewModel for list of items view
/// Primary lap
class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItemView = false
    
    init() {}
}
 
