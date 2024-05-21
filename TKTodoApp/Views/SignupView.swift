//
//  SignupView.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 21/05/24.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            VStack (alignment: .leading, spacing: 8) {
                Text("Complete Your Profile")
                    .font(.system(size: 25, weight: .medium))
                Text("Don't worry only you can see this information (personal data)")
            }
            .padding(.top,20)
            .padding()
            
            VStack {
                TKTextField(text: $name, placeholder: "Name", image: "person")
                
                TKTextField(text: $email, placeholder: "Email", image: "envelope")
                
                TKTextField(text: $password, placeholder: "Password", image: "lock", isSecure: true)
                
                TKTextField(text: $confirmPassword, placeholder: "Confirm Password", image: "lock", isSecure: true)
                
                TKButton(label: "Signup") {
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    SignupView()
}
