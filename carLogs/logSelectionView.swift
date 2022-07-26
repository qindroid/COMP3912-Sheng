//
//  logSelectionView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import SwiftUI

struct logSelectionView: View {
    var body: some View {
        VStack {
            HStack{
                NavigationLink(destination: addLogView(type: "Maintence")) {
                    VStack {
                        Image(systemName: "wrench.and.screwdriver.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Maintence")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                        
                }
                NavigationLink(destination: addLogView(type: "Fuel/Recharge")) {
                    VStack {
                        Image(systemName: "fuelpump.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Fuel/Recharge")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                }
            }
            HStack{
                NavigationLink(destination: addLogView(type: "Insurance")) {
                    VStack {
                        Image(systemName: "checkerboard.shield")
                            .resizable()
                            .frame(width: 60, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Insurance")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                        
                }
                NavigationLink(destination: addLogView(type: "Daily")) {
                    VStack {
                        Image(systemName: "menucard.fill")
                            .resizable()
                            .frame(width: 60, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Daily")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                }
            }
            HStack{
                NavigationLink(destination: addLogView(type: "Gadgets")) {
                    VStack {
                        Image(systemName: "gamecontroller.fill")
                            .resizable()
                            .frame(width: 90, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Gadgets")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                        
                }
                NavigationLink(destination: addLogView(type: "Repair")) {
                    VStack {
                        Image(systemName: "wrench.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(10)
                            .foregroundColor(.black)
                        Text("Repair")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black, lineWidth: 1)
                    )
                }
            }
        }
    }
}

struct logSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        logSelectionView()
    }
}
