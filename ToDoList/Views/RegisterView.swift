//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        HeaderView(title: "Register",
                   subtitle: "Start Organizing Todos",
                   angle: -15,
                   background: .orange)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
