//
//  ContentView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var selection: String? = nil
    @State var email = ""
    @State public var isAuthenticated = false
    @State var msg = " "
    var body: some View {
        
        NavigationView{
            VStack {
                NavigationLink(destination: homePageView(), tag: "Login", selection: $selection) { EmptyView() }
                NavigationLink(destination: SignupView(), tag: "Signup", selection: $selection) { EmptyView() }
                CarlogsImage()
                TextField("username", text: $email)
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
                Button(action: { login() }) {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                }
                .padding(.bottom, 5)
                NavigationLink(destination: homePageView(), isActive: $isAuthenticated) { EmptyView() }
                Button(action: {selection = "Signup"}) {
                    SignupButtonContent()
                }
                
            }
            .padding()

        }
        .padding(.top, 0)
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    func login() {
         Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
             if error != nil {
                 print(error?.localizedDescription ?? "")
                 msg = error?.localizedDescription ?? ""
                 isAuthenticated = false
                 isAuth = false
                 c.isLoggedIn = false
             } else {
                 print("success")
                 msg = "success"
                 isAuthenticated = true
                 isAuth = true
                 c.isLoggedIn = true
             }
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CarlogsImage : View {
    var body: some View {
        return Image("carlogs")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 450, height: 80)
            .clipped()
            .cornerRadius(0)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 40)
            .background(Color.blue)
            .cornerRadius(10.0)
        
    }
}


struct SignupButtonContent : View {
    var body: some View {
        return Text("Sign Up")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 40)
            .background(Color.blue)
            .cornerRadius(10.0)
        
    }
}
