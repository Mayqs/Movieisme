//
//  SigninView.swift
//  Movieisme
//
//  Created by May Alqunaytir on 24/12/2025.
//

import SwiftUI
//
struct SigninView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showPassword = false 

    var body: some View {
        ZStack {
            
            Image("signinbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.0),
                    Color.black.opacity(1.5)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 12) {
                Text("Sign in")
                    .font(.largeTitle.bold())

                Text("You'll find what you're looking for in the         ocean of movies")
                    .font(.body.bold())
                
                Text("Email")
                    .font(.title2)

                TextField("Email", text: $email)
                    .padding()
                    .background(Color("TextInput"))
                    .cornerRadius(18)
                    .foregroundColor(.white)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)

                Text("Password")
                    .font(.title2)
                
                ZStack(alignment: .trailing) {
                    if showPassword {
                        TextField("Password", text: $password)
                            .padding()
                            .background(Color("TextInput"))
                            .cornerRadius(18)
                            .foregroundColor(.white)
                            .textInputAutocapitalization(.never)
                    } else {
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color("TextInput"))
                            .cornerRadius(18)
                            .foregroundColor(.white)
                            .textInputAutocapitalization(.never)
                    }

                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundColor(.white)
                            .padding(.trailing, 15)
                    }
                }

                Button(action: {
                    // Sign in action here
                }) {
                    Text("Sign in")
                        .font(.title2.bold())
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color("PrimaryColor"))
                        )
                }
                .padding(.top, 30)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
            .preferredColorScheme(.dark)
    }
    
}


