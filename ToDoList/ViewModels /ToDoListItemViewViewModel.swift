//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation


/// Viewmodel for single to do list view (each  row items list)
class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
    
