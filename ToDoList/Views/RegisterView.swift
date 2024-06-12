//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import SwiftUI

struct RegisterView: View {
    
   @StateObject var ViewModel = RegisterViewViewModel()
    
    var body: some View{
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start Organizing Todos",
                       angle: -15,
                       background: .orange)
            
            // Form
            Form{
                TextField("Full Name", text: $ViewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $ViewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $ViewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // The TLButton
                TLButton(title: "Create account",
                         background: .green
                ){
                    // Attempt registration.
                }
            }
            .offset(y: -50)
            Spacer()
        }   
    }
}

#Preview {
    RegisterView()
}
