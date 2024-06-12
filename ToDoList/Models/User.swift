//
//  User.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
