//
//  logView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI

struct logView: View {
    var id: Int
    @ObservedObject var select = c

    var body: some View {
        NavigationView{
            VStack {
                generalCarCard(image: c.cars[select.selection].image, cartitle: c.cars[select.selection].cartitle)
                NavigationLink(destination: logSelectionView()) {
                        Text("Add a log")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 350, height: 40)
                            .background(.white)
                            .cornerRadius(10.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(.black, lineWidth: 1)
                            )
                }
                ScrollView {
                    VStack {
                        ForEach(select.cars[select.selection].logs) { log in
                            logCardView(logType: log.type, cost: log.cost, desc: log.desc, date: log.date, capacity: log.capacity, trip: log.mileage)
                        }
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

struct logView_Previews: PreviewProvider {
    static var previews: some View {
        logView(id: 0)
    }
}
