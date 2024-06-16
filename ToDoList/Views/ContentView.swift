//
//  ContentView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            // Signed in
            ToDoListView    ()
        } else {
            LoginView() 
        }
    }
}

#Preview {
    ContentView()
}
