//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all field "
            return
        }
        // emai@ foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please entre a correct email."
            return 
        }
        
    }
    func validate() {
        
    }
}
