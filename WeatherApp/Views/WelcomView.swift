//
//  WelcomView.swift
//  WeatherApp
//
//  Created by Marcin Dytko on 26/04/2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to MyWeather")
                    .bold()
                    .font(.title)
                
                Text("Share location to get the weather")
                    .padding()
                
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomView()
    }
}
