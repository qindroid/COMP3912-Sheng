//
//  settingView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI

struct settingView: View {
    
    @State private var selection: String? = nil
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: ContentView().onAppear{
                    c.isLoggedIn = false
                }, tag: "Signout", selection: $selection) { EmptyView() }
                Button(action: {
                    selection = "Signout"
                }) {
                    settingButton(name: "Sign out")
                }		
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct settingView_Previews: PreviewProvider {
    static var previews: some View {
        settingView()
    }
}


struct settingButton : View {
    var name: String
    var body: some View {
        return Text(name)
            .font(.headline)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 350, height: 40)
            .background(.white)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 1)
            )
    }
}
