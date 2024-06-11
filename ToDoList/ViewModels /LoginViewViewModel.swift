//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login() {
        guard validate()else {
            return
        }
        //Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
   private func validate() -> Bool {
       errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all field "
            return false
        }
        // emai@ foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please entre a correct email."
            return false
        }
        
        return true
    }
}
