//
//  addLogView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import SwiftUI

struct addLogView: View {
    var type: String
    @State var cost = ""
    @State var odo = ""
    @State var date = ""
    @State var capacity = ""
    @State var trip = ""
    @State var desc = ""
    @State var action: Bool = false
    @State var updater: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack {
                        Text("Total Expenses:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("$", text: $cost)
                            .keyboardType(.decimalPad)
                            .frame(width: 200, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                    VStack {
                        Text("Fuel Type:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        Text("\(type)")
                            .font(.title3)
                            .frame(width: 200, height: 40, alignment: .center)
                            .lineLimit(1)
                    }
                }
                HStack {
                    VStack {
                        Text("Odometer:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("\(c.cars[c.selection].odo)", text: $odo)
                            .keyboardType(.decimalPad)
                            .frame(width: 200, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                    VStack {
                        Text("Date:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("YYYY-MM-DD", text: $date)
                            .keyboardType(.decimalPad)
                            .frame(width: 200, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                }
                HStack {
                    VStack {
                        Text("Capacity:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("L/Kwh", text: $capacity)
                            .keyboardType(.decimalPad)
                            .frame(width: 200, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                    VStack {
                        Text("Trip:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("Km", text: $trip)
                            .keyboardType(.decimalPad)
                            .frame(width: 200, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                }
                HStack {
                    VStack {
                        Text("Description:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("Description", text: $desc)
                            .keyboardType(.decimalPad)
                            .frame(width: 400, height: 40, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                        
                    }
                }.padding(.bottom, 20)
                HStack {
                    NavigationLink(destination: logView(id: c.selection).onAppear{
                        updater.toggle()
                    }, isActive: $action) {
                        EmptyView()
                    }
                    Text("Add")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        .onTapGesture {
                            self.addLog()
                            c.cars[c.selection].logUpdate()
                            c.cars[c.selection].addToTotalCost(cost: Int(cost)!)
                    }
                    NavigationLink(destination: logView(id: c.selection)) {
                                        Text("Cancel")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 150, height: 40)
                            .background(Color.blue)
                            .cornerRadius(10.0)
                    }
                    
                }
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
    func addLog() {
        action = true
        let tempLog = Log(type: type,mileage: Int(trip)!, cost: Int(cost)!, date: date, capacity: Int(capacity)!, odo: Int(odo)!, desc: desc)
        print("add another log")
        c.cars[c.selection].logs.append(tempLog)
    }
}

struct addLogView_Previews: PreviewProvider {
    static var previews: some View {
        addLogView(type: "Fuel/Recharge")
    }
}
