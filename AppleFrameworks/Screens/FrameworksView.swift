
//
//  FrameworkGrid.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import SwiftUI

struct FrameworksView: View {
    @StateObject private var viewModel = FrameworksViewModel()
    @State private var displayMode: FrameworkDisplayMode = .list

    private let columns: [GridItem] = Array(
        repeating: GridItem(.flexible()),
        count: 3
    )

    var body: some View {
        let detailBinding = Binding(
            get: { viewModel.isShowingDetailView },
            set: { if !$0 { viewModel.closeDetailView() } }
        )

        NavigationStack {
            VStack {
                HStack {
                    Button {
                        displayMode = displayMode == .grid ? .list : .grid
                    } label: {
                        Image(systemName: displayMode == .list ? "square.grid.2x2" : "list.bullet")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }.padding()

                Group {
                    if displayMode == .list {
                        FrameworkListView(
                            frameworks: MockData.frameworks, onFrameworkSelected: { viewModel.selectedFramework = $0
                            }
                        )
                    } else {
                        FrameworksGridView(
                            frameworks: MockData.frameworks,
                            onFrameworkSelected: { viewModel.selectedFramework = $0 }
                        )
                    }
                }
            }
        }
        .sheet(isPresented: detailBinding) {
            if let selectedFramework = viewModel.selectedFramework {
                FrameworkDetailView(
                    framework: selectedFramework,
                    isShowingDetailView: detailBinding
                )
            }
        }
    }
}

#Preview {
    FrameworksView()
}
