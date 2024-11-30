
//
//  FrameworkGrid.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    private let columns: [GridItem] = Array(
        repeating: GridItem(.flexible()),
        count: 3
    )

    var body: some View {
        let detailBinding = Binding(
            get: { viewModel.isShowingDetailView },
            set: { if !$0 { viewModel.closeDetailView() } }
        )

        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 12) {
                    ForEach(MockData.frameworks, id: \.id) { framework in FrameworkCardView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }.sheet(isPresented: detailBinding) {
                            if let selectedFramework = viewModel.selectedFramework {
                                FrameworkDetailView(
                                    framework: selectedFramework,
                                    isShowingDetailView: detailBinding
                                )
                            }
                        }
                    }
                }.padding()
            }.navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}
