//
//  ContentView.swift 
//  Shared
//
//  Created by Lixuan Guo on 2022-08-22.
//  This is the VOLLER APP


import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var homePage = false
    
    @State var isLoginMode = false
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                
                //Image("Moonlit Asteroid")
                            //.resizable()
                            //.aspectRatio(contentMode: .fill)
                            //.edgesIgnoringSafeArea(.all)
                Image("volley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.bottom, 300)
                    .opacity(0.6)
                
                Image("volley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .offset(x:-80, y:105)
                    .rotationEffect(.degrees(90))
                    .opacity(0.5)
                Image("volley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .offset(x:-95, y:-150)
                    .opacity(0.3)
                    .rotationEffect(.degrees(-69))
                Image("volley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .offset(x:-290, y:-50)
                    .opacity(0.2)
                    .rotationEffect(.degrees(-45))
                VStack{
                    Text("hit on your favourite players.")
                        .font(
                            .system(size: 20)
                                .weight(.bold)
                            
                        )
                        .foregroundColor(.black)
                
                        .padding(.top, 420)
                        
                        
                    TextField("Username", text: $username)
    
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Text("Forgot Password?")
                        .font(.system(size: 14))
                    
                    Button("CONNECT") {
                        //Authenticate USER
                        authenticateUSer(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 190, height: 50)
                    .background(Color.black.opacity(0.9))
                    .cornerRadius(20)
                    
                    Text("New Here? Create account.")
                        .font(.system(size: 15)
                            .weight(.bold)
                        )
                        .offset(x:0, y:40)
                    
                    //nav link
                    NavigationLink(destination: HomePageView()){
                        
                        
                    
                    }
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
        
            
        
    }
    func authenticateUSer(username: String, password: String){
        if username.lowercased() == "mari02022" {
            wrongUsername = 0
            if password.lowercased() == "1234" {
            homePage = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
