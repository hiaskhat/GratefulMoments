//
//  MomentEntryView.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 28.12.2025.
//

import SwiftUI

struct MomentEntryView: View {
    var body: some View {
        contentStack    
    }
    
    var contentStack: some View {
        VStack(alignment: .leading) {
            Text("Title")
            
            Text("Note")
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
