//
//  LoginView.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 21/05/24.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSignup: Bool = false
    
    var body: some View {
        VStack {
            Image("login")
                .resizable()
                .frame(width: 200, height: 200)
            
            VStack {
                Text("Login")
                    .bold()
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,20)
                
                TKTextField(text: $email, placeholder: "Email", image: "envelope")
                
                TKTextField(text: $password, placeholder: "Password", image: "lock", isSecure: true)
                
                TKButton(label: "Login") {
                    
                }
            }
            .padding()
            
            HStack {
                VStack {Divider()}
                Text("Or")
                VStack {Divider()}
            }
            
            VStack(spacing: 10) {
                TKButton(label: "Signup with email", iconName: "envelope") {
                    isSignup.toggle()
                }
                
                TKButton(label: "Signin With Google", iconImage: Image("google")) {
                    
                }
                
                SignInWithAppleButton(.signIn) { result in
                    
                } onCompletion: { result in
                    
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .signInWithAppleButtonStyle(.whiteOutline)
                .shadow(color: .black, radius: 4, x: 0, y: 2)
            }
            .padding()
        }
        .padding()
        .sheet(isPresented: $isSignup, content: {
            SignupView()
        })
    }
}

#Preview {
    LoginView()
}
