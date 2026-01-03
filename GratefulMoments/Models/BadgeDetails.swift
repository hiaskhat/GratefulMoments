//
//  BadgeDetails.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 02.01.2026.
//

import Foundation
import SwiftUI

enum BadgeDetails: Int, Codable, CaseIterable {
    case firstEntry
    case fiveStars
    case shutterbug
    case expressive
    case perfectTen
    
    var requirements: String {
        switch self {
        case .firstEntry:
            return "Добавь момент чтобы начать приключение."
        case .fiveStars:
            return "Добавь 5 моментов."
        case .shutterbug:
            return "Добавь 3 момента с фото."
        case .expressive:
            return "Добавь 5 моментов с фото и описанием."
        case .perfectTen:
            return "Добавь как минимум 10 моментов, собрав все предыдущие награды."
        }
    }
    
    var title: String {
        switch self {
        case .firstEntry:
            return "Начать приключение"
        case .fiveStars:
            return "5 звёзд"
        case .shutterbug:
            return "Фотолюбитель"
        case .expressive:
            return "Экспрессивный"
        case .perfectTen:
            return "Идеально!"
        }
    }
    
    var image: ImageResource {
        switch self {
        case .firstEntry:
            return .firstEntryUnlocked
        case .fiveStars:
            return .fiveStarsUnlocked
        case .shutterbug:
            return .shutterbugUnlocked
        case .expressive:
            return .expressiveUnlocked
        case .perfectTen:
            return .perfectTenUnlocked
        }
    }
    
    var lockedImage: ImageResource {
        switch self {
        case .firstEntry:
            return .firstEntryLocked
        case .fiveStars:
            return .fiveStarsLocked
        case .shutterbug:
            return .shutterbugLocked
        case .expressive:
            return .expressiveLocked
        case .perfectTen:
            return .perfectTenLocked
        }
    }
    
    var color: Color {
        switch self {
        case .firstEntry:
            return .ember
        case .fiveStars:
            return .ruby
        case .shutterbug:
            return .sapphire
        case .expressive:
            return .ocean
        case .perfectTen:
            return .ember
        }
    }
    
    var congratulatoryMessage: String {
        switch self {
        case .firstEntry:
            return "Каждое приключение начинается с первого шага. Поздравляем - твоё уже началось!"
        case .fiveStars:
            return "Вы набираете обороты! Чем больше вы сосредотачиваетесь на регулярной практике, тем лучше у вас получается выбирать и поддерживать выбранные вами привычки."
        case .shutterbug:
            return "Фотографии связывают нас с прошлым, и, рассматривая их, мы можем вернуться к тому чувству благодарности, которое испытывали, когда делали эти снимки."
        case .expressive:
            return "Посмотри на себя, как ты наслаждаешься счастливыми воспоминаниями всеми возможными способами!"
        case .perfectTen:
            return "У тебя уже получается с новой привычкой! Продолжай в том же духе, и посмотрим, чего ты сможешь добиться."
        }
    }
}
