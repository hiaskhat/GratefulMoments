//
//  MomentEntryView.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 28.12.2025.
//

import SwiftUI

struct MomentEntryView: View {
    @State private var title = ""
    @State private var note = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .scrollDismissesKeyboard(.interactively)
            .navigationTitle("Grateful for")
        }
    }
    
    var contentStack: some View {
        VStack(alignment: .leading) {
            //textfield
            TextField(text: $title) {
                Text("Title (Required)")
            }
            .font(.title.bold())
            .padding(.top, 48)
            Divider()
            //textfield with as many lines of text as user can type in
            TextField("Log your small wins", text: $note, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(5...Int.max)
            
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
