//
//  ContentView.swift
//  SimpleWeather
//
//  Created by Francisco Jean on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("sunny")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                MainView()
                Spacer()
                AirQualityView()
                    .padding(.leading, -70)
                WeeklyView()
            }
            .padding(.top, 45)
            .padding(.bottom, 10)
          
        }
    }
}

struct MainView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mexico City")
                .font(.system(size: 45, weight: .bold))
                .padding(.bottom, 0)
            Text("20°")
                .font(.system(size: 55))
        }
        .padding(.leading, -90)
        
    }
}

struct WeeklyView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Next week")
                .padding(.leading, 6)
                .padding(.bottom, 12)
                .font(.system(size: 30, weight: .bold))
            HStack {
                DailyView()
                DailyView()
                DailyView()
                DailyView()
                DailyView()
                DailyView()
        }
            .padding(.bottom, 25)
            HStack {
                DailyView()
                DailyView()
                DailyView()
                DailyView()
                DailyView()
                DailyView()
        }
        }
        .padding(.vertical, 45)
        .padding(.horizontal, 10)
        .background(
            LinearGradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(15)
    }
}

struct DailyView: View {
    var body: some View {
        VStack {
            Text("Day")
                .font(.system(size: 20))
            Image(systemName: "cloud.drizzle.fill")
                .font(.system(size: 20))
                .foregroundColor(.black.opacity(0.6))
                .padding(.vertical,20)
                .padding(.horizontal, 15)
            Text("20°")
                .font(.system(size: 20))
        }
    }
}

struct AirQualityView: View {
    var body: some View {
        HStack {
            Image(systemName: "wind")
                .foregroundColor(.white)
            Image(systemName: "thermometer.medium")
                .foregroundColor(.red)
            Image(systemName: "humidity.fill")
                .foregroundColor(.blue)
            Image(systemName: "carbon.monoxide.cloud.fill")
                .foregroundColor(.gray)
        }
        .font(.system(size: 23))
        .padding(.bottom, 15)
    }
}

#Preview {
    ContentView()
}
