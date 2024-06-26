//
//  LoginView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import SwiftUI

struct LoginView: View {
     @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done", 
                           angle: 15,
                           background: .pink)
                
                // Login Form
               
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                   
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                  // The TLButton
                    TLButton(title: "Login", 
                             background: .blue
                    ){
                        // Action 
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                // Create a account
                VStack{
                    Text("New arround here ?")
                    NavigationLink("Create a account", 
                                    destination: RegisterView())
                }
                .padding(.bottom, 50)
                 Spacer ()
            }
        }
    }
}

#Preview {
    LoginView()
}
