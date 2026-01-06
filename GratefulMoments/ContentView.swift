//
//  ContentView.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 18.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MomentsView()
                .tabItem {
                    Label("Моменты", image: "MomentsTab")
                }
            AchievementsView()
                .tabItem {
                    Label("Достижения", systemImage: "medal.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .sampleDataContainer()
}
