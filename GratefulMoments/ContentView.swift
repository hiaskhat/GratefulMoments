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
                    Label("Moments", image: "MomentsTab")
                }
            AchievementsView()
                .tabItem {
                    Label("Achievements", systemImage: "medal.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .sampleDataContainer()
}
