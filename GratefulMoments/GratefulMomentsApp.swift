//
//  GratefulMomentsApp.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 18.11.2025.
//

import SwiftUI
import SwiftData

@main
struct GratefulMomentsApp: App {
    @MainActor
    let dataContainer = DataContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
