//
//  HexagonLayout.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 01.01.2026.
//

import Foundation

enum HexagonLayout {
    case standart
    case large
    
    var size: CGFloat {
        switch self {
        case .standart:
            return 200.0
        case .large:
            return 350.0
        }
    }
}
