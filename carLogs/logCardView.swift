//
//  logCardView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import SwiftUI

struct logCardView: View {
    var logType: String
    var cost: Int
    var desc: String
    var date: String
    var capacity: Int
    var trip: Int
    var body: some View {
        VStack {
            HStack {
                Text(logType)
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width: 380, height: 25, alignment: .leading)
                    .multilineTextAlignment(.leading)
//                Button(action: {}) {
//                    Image(systemName: "trash")
//                        .resizable()
//                        .frame(width: 30, height: 30, alignment: .center)
//                }
            }
            if !logType.contains("uel") {
                HStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Cost:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(cost)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }.frame(width: 120, height: 60, alignment: .leading)
                        VStack(alignment: .leading) {
                            Text("Date:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(date)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }.frame(width: 120, height: 60, alignment: .leading)
                        .layoutPriority(100)
                        VStack(alignment: .leading) {
                            Text("Description:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(desc)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }.frame(width: 120, height: 60, alignment: .leading)
                        Spacer()
                    }
                    .padding()
                }
            } else {
                HStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Cost:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(cost)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                            Text("Description:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(desc)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }
                        VStack(alignment: .leading) {
                            Text("Date:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(date)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                            Text("Fuel Comsumption:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(capacity/(trip+1))")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }
                        .layoutPriority(100)
                        VStack(alignment: .leading) {
                            Text("Capacity:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(capacity)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                            Text("Trip:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("\(trip)")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                                .padding(.leading)
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
            
        }.padding(15)
            .frame(alignment: .center)
    }
    func delete() {
    }
}

struct logCardView_Previews: PreviewProvider {
    static var previews: some View {
        logCardView(logType: "Fuel refilling", cost: 160, desc: "refilling", date: "2022-7-22", capacity: 80, trip: 500)
    }
}
