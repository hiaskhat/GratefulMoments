//
//  HexagonLayout.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 01.01.2026.
//

import SwiftUI

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
    
    var timestampBottomPadding: CGFloat {
        0.08
    }
    
    var textBottomPadding: CGFloat {
        0.25
    }
    
    var timestampHeight: CGFloat {
        size * (textBottomPadding - timestampBottomPadding)
    }
    
    var titleFont: Font {
        switch self {
        case .standart:
            return .headline
        case .large:
            return .title.bold()
        }
    }
    
    var bodyFont: Font {
        switch self{
        case .standart:
            return .caption2
        case .large:
            return .body
        }
        
    }
}
