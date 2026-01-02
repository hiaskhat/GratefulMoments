//
//  MomentsView.swift
//  GratefulMoments
//
//  Created by Асхат Баймуканов on 30.12.2025.
//

import SwiftUI
import SwiftData

struct MomentsView: View {
    @State private var showCreateMoment = false
    @Query(sort: \Moment.timestamp)
    private var moments: [Moment]
    
    static let offsetAmount: CGFloat = 70.0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                pathItems
                    .frame(maxWidth: .infinity)
            }
            .overlay {
                if moments.isEmpty {
                    ContentUnavailableView {
                        Label("Ещё нет моментов!", systemImage: "exclamationmark.circle.fill")
                    } description: {
                        Text("Добавь заметку или фото чтобы наполнить благодарностью.")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        showCreateMoment = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $showCreateMoment) {
                        MomentEntryView()
                    }
                }
            }
            .defaultScrollAnchor(.bottom)
//            .defaultScrollAnchor(.bottom, for: .initialOffset)
//            .defaultScrollAnchor(.bottom, for: .sizeChanges)
            .defaultScrollAnchor(.top)
            .navigationTitle("Моменты благодарности")
        }
    }
    
    private var pathItems: some View {
        ForEach(Array(moments.enumerated()), id: \.0) { index, moment in
            NavigationLink {
                MomentDetailView(moment: moment)
            } label: {
                if moment == moments.last {
                    MomentHexagonView(moment: moment, layout: .large)
                } else {
                    MomentHexagonView(moment: moment)
                        .offset(x: sin(Double(index) * .pi / 2) * Self.offsetAmount)
                }
            }
            .scrollTransition { content, phase in
                content
                    .opacity(phase.isIdentity ? 1 : 0)
                    .scaleEffect(phase.isIdentity ? 1 : 0.8)
            }
        }
    }
}

#Preview {
    MomentsView()
        .sampleDataContainer()
}

#Preview("No comments") {
    MomentsView()
        .modelContainer(for: [Moment.self])
        .environment(DataContainer())
}
