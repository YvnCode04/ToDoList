//
//  ProfileView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 11/06/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profiles")
        }

    }
}

#Preview {
    ProfileView()
}
 
