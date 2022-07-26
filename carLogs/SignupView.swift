//
//  SignupView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI
import Firebase
struct SignupView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var selection: String? = nil
    @State var signUpProcessing = false
    @State var msg: String = " "
    var body: some View {
        
        NavigationView{
            VStack {
                NavigationLink(destination: homePageView(), tag: "Signup", selection: $selection) { EmptyView() }
            TextField("username", text: $username)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.black, lineWidth: 1)
                )
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.black, lineWidth: 1)
                )
                Text(msg)
                Button(action: {
                    signUpUser(userEmail: username, userPassword: password)
                }){
                    Text("Sign up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                }
                .padding(.top, 10)
                .disabled(!signUpProcessing && !username.isEmpty && !password.isEmpty ? false : true)
                NavigationLink(destination: homePageView(), isActive: $signUpProcessing) { EmptyView() }
                NavigationLink(destination: ContentView(), tag: "back", selection: $selection) { EmptyView() }
                Button(action: {selection = "back"}) {
                    Text("Back")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                }
                .padding(.top, 10)
        }
        .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    func signUpUser(userEmail: String, userPassword: String) {
        
        signUpProcessing = true
        
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                signUpProcessing = false
                isAuth = false
                msg = "sign up fail"
                return
            }
            switch authResult {
                case .none:
                    print("Could not create account.")
                    msg = "sign up fail"
                    signUpProcessing = false
                    c.isLoggedIn = false
                case .some(_):
                    print("User created")
                    msg = "sign up success"
                    signUpProcessing = true
                    isAuth = true
                    c.isLoggedIn = true
            }
        }
    }
    
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
