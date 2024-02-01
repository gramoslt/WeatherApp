//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Gerardo Ramos on 31/01/24.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color.white]),
                startPoint: .topLeading, endPoint: .bottomTrailing
            ).ignoresSafeArea()

            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .padding()

                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)

                    Text("76º")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }

                Spacer()

                HStack(spacing: 20) {

                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)

                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)

                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)

                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)

                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    WeatherView()
}

struct WeatherDayView: View {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int

    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.callout)
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)º")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
    }
}
