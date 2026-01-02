//
//  Moment.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 29.12.2025.
//

import Foundation
import SwiftData
import UIKit

@Model
class Moment {
    var title: String
    var note: String
    var imageData: Data?
    var timestamp: Date
    
    init(title: String, note: String, imageData: Data? = nil, timestamp: Date = .now) {
        self.title = title
        self.note = note
        self.imageData = imageData
        self.timestamp = timestamp
    }
    
    //Import UIKit and add a property that converts the image data into a UIImage for display.
    //Use flatMap to initialize a UIImage only when the data is non-optional.
    var image: UIImage? {
        imageData.flatMap {
            UIImage(data: $0)
        }
    }
}


extension Moment {
    static let sample = sampleData[0]
    static let longTextSample = sampleData[1]
    static let imageSample = sampleData[4]
    
    static let sampleData = [
        Moment(
            title: "🍅🥳",
            note: "Первый помидор, выращенный дома!"
        ),
        Moment(
            title: "Сдала тест!",
            note: "Экзамен по химии был сложный, но думаю я сдала его хорошо. Я так рада что смогла подготовиться к нему вместе с Гильермо и Ли. Это реально помогло!",
            imageData: UIImage(named: "Study")?.pngData()
        ),
        Moment(
            title: "Отдых",
            note: "Так благодарна за этот вечер после тяжелой рабочей недели.",
            imageData: UIImage(named: "Relax")?.pngData()
        ),
        Moment(
            title: "Семья ❤️",
            note: ""
        ),
        Moment(
            title: "Круто!",
            note: "Ходил на крутой концерт с Блэр 🎶",
            imageData: {
                if let img = UIImage(named: "Concert") {
                    return img.pngData()
                } else {
                    return UIImage(systemName: "photo")?.pngData()
                }
            }()
        )
    ]
}
