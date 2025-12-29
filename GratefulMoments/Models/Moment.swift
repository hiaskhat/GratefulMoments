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
            note: "Picked my first homegrown tomato!"
        ),
        Moment(
            title: "Passed the test!",
            note: "The chem exam was tough, but I think I did well 🙌 I’m so glad I reached out to Guillermo and Lee for a study session. It really helped!",
            imageData: UIImage(named: "Study")?.pngData()
        ),
        Moment(
            title: "Down time",
            note: "So grateful for a relaxing evening after a busy week.",
            imageData: UIImage(named: "Relax")?.pngData()
        ),
        Moment(
            title: "Family ❤️",
            note: ""
        ),
        Moment(
            title: "Rock on!",
            note: "Went to a great concert with Blair 🎶",
            imageData: UIImage(named: "Concert")?.pngData()
        )
    ]
}
