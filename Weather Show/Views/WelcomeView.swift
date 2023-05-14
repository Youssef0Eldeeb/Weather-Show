//
//  WelcomeView.swift
//  Weather Show
//
//  Created by Youssef Eldeeb on 13/05/2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var LocationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                Text("please share your location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                LocationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
