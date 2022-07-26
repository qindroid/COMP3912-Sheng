//
//  summaryView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI

struct summaryView: View {
    var id: Int
    @ObservedObject var select = c
    var body: some View {
        NavigationView{
            VStack {
                generalCarCard(image: select.cars[select.selection].image, cartitle: select.cars[select.selection].cartitle)
                ScrollView {
                    VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Total Expenses:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].totalExpense)")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Fuel Consum:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text(" \(select.cars[select.selection].getAvgFuelCom())L/km")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Avg cost:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].totalExpense/select.cars[select.selection].odo)/km")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                }
                                .frame(width: 130, height: 150, alignment: .center)
                                VStack(alignment: .leading) {
                                    Text("Car value:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].orgValue)")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Fuel cost:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].totalFuelCost())")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Avg log loss:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].totalLogCost()/select.cars[select.selection].totalLogMileage())/km")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                }
                                .frame(width: 130, height: 150, alignment: .center)
                                VStack(alignment: .leading) {
                                    Text("Total log cost:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("$\(select.cars[select.selection].totalLogCost())")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Log Mileage:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("\(select.cars[select.selection].logMileage())km")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                    Text("Odometer:")
                                        .font(.headline)
                                        .foregroundColor(.secondary)
                                    Text("\(select.cars[select.selection].odo)km")
                                        .font(.title3)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                        .padding(.leading)
                                }
                                .frame(width: 130, height: 150, alignment: .center)
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

struct summaryView_Previews: PreviewProvider {
    static var previews: some View {
        summaryView(id: 0)
    }
}
