//
//  LoginView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // Login Button
                    Button {
                        // Attend Loging
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        .padding() 
                    }
                }
                .offset(y: -50)
                
                // Create a account
                VStack{
                    Text("New arround here ?")
                    NavigationLink("Create a account", destination: RegisterView())
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
