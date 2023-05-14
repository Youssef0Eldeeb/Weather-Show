//
//  WeatherRow.swift
//  Weather Show
//
//  Created by Youssef Eldeeb on 14/05/2023.
//

import SwiftUI

struct WeatherRow: View {
    var logo, name, value: String
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            VStack(alignment: .leading, spacing: 8){
                Text(name)
                    .font(.caption)
                Text(value)
                    .bold()
                    .font(.title)
            }//: VStack
        }//: HStack
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "thermometer", name: "feel like", value: "9")
    }
}
