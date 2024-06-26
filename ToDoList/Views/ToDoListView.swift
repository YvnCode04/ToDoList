//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        // user/<id>/todos/<entries
        self._items = FirestoreQuery(
            collectionPath:  "users/\(userId)/todos"
        )
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                                Button("Delete"){
                                    viewModel.delete(id: item.id)
                                }
                                .background(Color.red)
                            }
                        }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "28G9gnmpzsXBdeWnW1f8BaE7fA33")
}
