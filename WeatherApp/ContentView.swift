//
//  ContentView.swift
//  WeatherApp
//
//  Created by Sultan on 25.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Astana")
                .font(.system(size: 48, weight: .bold))
            ContainerWeather(temp: "20℃", weekDay: "Today", typeWeather: "Sunny", image: "sun.max.fill")
                .padding(26)
            
            HStack {
                Text("Forecasts for 5 days")
                Spacer()
            }
            .padding(26)
            
            List {
                ContainerWeather(temp: "20℃", weekDay: "Today", typeWeather: "Sunny", image: "sun.max.fill")
                ContainerWeather(temp: "20℃", weekDay: "Today", typeWeather: "Sunny", image: "sun.max.fill")
                ContainerWeather(temp: "20℃", weekDay: "Today", typeWeather: "Sunny", image: "sun.max.fill")
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
