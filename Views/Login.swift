//
//  Log-in.swift
//  test app
//
//  Created by OMAR ALHARBI on 19/10/1445 AH.
//

import SwiftUI

/* struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                
                func authenticateUser(username: String, password: String) {
                    if username.lowercased() == "un" {
                        wrongUsername = 0
                        
                        if password.lowercased() == "abc123" {
                            wrongPassword = 0
                            isLoggedIn = true
                        } else {
                            wrongPassword = 2
                        }
                    } else {
                        wrongUsername = 2
                    }
                }
                    .navigationBarHidden(true)
            }
            
            struct Login: PreviewProvider {
                static var previews: some View {
                    Login()
                }
            }
        }
    }
}
*/
