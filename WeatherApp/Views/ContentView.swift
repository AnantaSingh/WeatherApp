//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ananta Singh on 25/01/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            }
            else {
                    if locationManager.isLoading {
                        LoadingView()
                    } else {
                            WelcomeView()
                                    .environmentObject(locationManager)
                    }
            }

            
          //  WelcomeView().environmentObject(locationManager)
        }
        .background(Color(hue: 0.655, saturation: 0.689, brightness: 0.345))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
