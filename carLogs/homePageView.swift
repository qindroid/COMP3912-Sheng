//
//  homePageView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI

struct homePageView: View {
    @State public var tabSelection = 1
    @State var updater: Bool = false
    @State var id: Int = c.selection
    @ObservedObject var temp = c
    var body: some View {
            NavigationView {
                VStack(spacing: 0) {
                    if temp.isLoggedIn == true {

                    TabView (selection: $tabSelection)  {
                        garageView(id: id)
                            .tabItem {
                                Label("Garage", systemImage: "car")
                            }.tag(1)
                        logView(id: id)
                            .tabItem {
                                Label("Log", systemImage: "book.fill")
                            }.tag(2)
                        summaryView(id: id)
                            .tabItem {
                                Label("Summary", systemImage: "questionmark.diamond")
                            }.tag(3)
    //                    brandsView()
    //                        .tabItem {
    //                            Label("Share", systemImage: "square.and.arrow.up.fill")
    //                        }.tag(4)
                        settingView()
                            .tabItem {
                                Label("Setting", systemImage: "wrench.and.screwdriver.fill")
                            }.tag(5)
                    }

                }
            }
        }
        .padding(.top, 0)
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct homePageView_Previews: PreviewProvider {
    static var previews: some View {
        homePageView()
    }
}
