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
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Membre since
                VStack(alignment: .leading){
                    HStack {
                        Text("Name: ")
                        Text("Yvan Gauthier")
                    }
                    .padding()
                    HStack {
                        Text("Email: ")
                        Text("Yvan")
                    }
                    .padding()
                    HStack {
                        Text("Member since: ")
                        Text("Gauthier")
                    }
                    .padding()
                    
                }
                .padding()
                
                // Sign out
                Button("Log Out"){
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                Spacer()
                   
                
            }
            .navigationTitle("Profiles")
        }

    }
}

#Preview {
    ProfileView()
}
 
