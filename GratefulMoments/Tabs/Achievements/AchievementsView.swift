//
//  AchievementsView.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 05.01.2026.
//

import SwiftUI
import SwiftData

struct AchievementsView: View {
    @Query(filter: #Predicate<Badge> { $0.timestamp != nil })
    private var unlockedBadges: [Badge]
    
    @Query(filter: #Predicate<Badge> { $0.timestamp == nil })
    private var lockedBadges: [Badge]
    
    @Query(sort: \Moment.timestamp)
    private var moments: [Moment]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .navigationTitle("Achievements")
        }
    }
    
    private var contentStack: some View {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        VStack(alignment: .leading) {
            StreakView(numberOfDays: StreakCalculator().calculateStreak(for: moments))
                .frame(maxWidth: .infinity)
            if !unlockedBadges.isEmpty {
                header("Ваши награды")
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(sortedUnlockedBadges) { badge in
                            UnlockedBadgeView(badge: badge)
                        }
                    }
                }
                .scrollClipDisabled()
                .scrollIndicators(.hidden)
=======
=======
>>>>>>> parent of 7a401a6 (add LockedBadgeView and UnlockedBadgeView)
=======
>>>>>>> parent of 7a401a6 (add LockedBadgeView and UnlockedBadgeView)
        VStack {
            header("your Badges")
            ForEach(sortedUnlockedBadges) { badge in
                Text(badge.details.title)
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 7a401a6 (add LockedBadgeView and UnlockedBadgeView)
=======
>>>>>>> parent of 7a401a6 (add LockedBadgeView and UnlockedBadgeView)
=======
>>>>>>> parent of 7a401a6 (add LockedBadgeView and UnlockedBadgeView)
            }
            header("Locked Badges")
            ForEach(sortedLockedBadges) { badge in
                Text(badge.details.title)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
    
    func header(_ text: String) -> some View {
        Text(text)
            .font(.subheadline.bold())
            .padding()
    }
    
    /// - precondition: `unlockedBadges` must have a timestamp
    private var sortedUnlockedBadges: [Badge] {
        unlockedBadges.sorted {
            ($0.timestamp!, $0.details.title) < ($1.timestamp!, $1.details.title)
        }
    }
    
    private var sortedLockedBadges: [Badge] {
        lockedBadges.sorted {
            $0.details.rawValue < $1.details.rawValue
        }
    }
}

#Preview {
    AchievementsView()
        .sampleDataContainer()
}
