//
//  brandsView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-21.
//

import SwiftUI
import Foundation

struct brandsView: View {
    @State var carlist = [CarBrand]()
    @State var brand = ""

    var body: some View {
        NavigationView {
            List(carlist, id: \.Make_Name) { item in
                    VStack(alignment: .leading) {
//                        Button{print(item.Make_Name)}label: {
//                            Text(item.Make_Name)
//                                .font(.title)
//                        }
                        NavigationLink(destination: addCarView(brand: item.Make_Name)) {
                                            Text(item.Make_Name)
                            
                        }
                    }
                }.task {
                    await loadData()
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    func loadData() async {
        guard let url = URL(string: "https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json") else {
            print("Invalid url...")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let cars = try! JSONDecoder().decode(Result.self, from: data)
            carlist = cars.Results
        } catch {
            print("Invalid data")
        }
    }
}

struct brandsView_Previews: PreviewProvider {
    static var previews: some View {
        brandsView()
    }
}

struct Result: Codable {
    var Results: [CarBrand]
}

struct CarBrand: Codable, Identifiable {
    let id = UUID()
    var Make_ID: Int
    var Make_Name: String
}
