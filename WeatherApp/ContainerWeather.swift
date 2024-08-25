//
//  ContainerWeather.swift
//  WeatherApp
//
//  Created by Sultan on 25.08.2024.
//

import SwiftUI

struct ContainerWeather: View {
    var temp: String = ""
    var weekDay: String = ""
    var typeWeather: String = ""
    var image = ""
    
    var body: some View {
        HStack {
            VStack {
                Text(weekDay)
                    .padding(16)
                    .padding(.bottom, 26)
                    .font(.title)
                     .foregroundStyle(.white)
                Text(typeWeather)
            }
                .padding(8)
                .foregroundStyle(.white)
            
            Spacer()
            
            VStack {
                Image(systemName: image)
                    .padding(16)
                    .padding(.bottom, 26 )
                    .foregroundStyle(.white)
                Text(temp)
                    .foregroundStyle(.white)
            }
                .padding(8)
        }
        .background(.purple)
        .cornerRadius(16)
    }
}

#Preview {
    ContainerWeather(temp: "20℃", weekDay: "Monday", typeWeather: "Sunny", image: "sun.max.fill")
}
