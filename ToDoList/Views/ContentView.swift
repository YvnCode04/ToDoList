//
//  ContentView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ContentViewViewModel()
    
    var body: some View {
            LoginView()
    }
}

#Preview {
    ContentView()
}
