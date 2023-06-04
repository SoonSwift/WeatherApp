//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Marcin Dytko on 26/04/2023.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(LocationManager())

        }
    }
}
