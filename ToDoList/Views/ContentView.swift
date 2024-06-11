//
//  ContentView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.system(size: 50))
                .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
