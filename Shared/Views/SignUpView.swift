//
//  SignUpView.swift
//  Voller
//
//  Created by Lixuan Guo on 2022-08-23.
//  Collaborative project

import SwiftUI

struct SignUpView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    @State private var birthDate = Date()
    @State private var gender = 0
    @State private var height = ""
  
    //


    //

    var body: some View {
        NavigationView {
            Form {
                
                Section(header:Text("Personal information")) {
                    TextField ("First Name", text: $firstName)
                    TextField ("Last Name", text: $lastName)
                
                }
                
                Section(header: Text("Your account")) {
                    TextField ("Username", text: $username)
                    TextField ("Email", text: $email)
                    TextField ("Password", text: $password)
                    
                }
                
                Section(header: Text("Additional information")) {
                    DatePicker("Birdthdate", selection: $birthDate, displayedComponents: .date)
                    
                    Picker(selection: $gender, label: Text("Gender")){
                        Text("Male")
                        Text("Female")
                        Text("Non-Binary")
                        
                    }
                    
                    TextField ("Height", text: $password)
                    
                }
            }
            .navigationTitle("Create Your Account")
            
            
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
