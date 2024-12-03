
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
    @State private var path: [String] = []

    private let columns: [GridItem] = Array(
        repeating: GridItem(.flexible()),
        count: 3
    )

    var body: some View {
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
                        FrameworkListView(frameworks: MockData.frameworks)
                    } else {
                        FrameworksGridView(frameworks: MockData.frameworks)
                    }
                }.navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailView(framework: framework)
                }
            }
        }
    }
}

#Preview {
    FrameworksView()
}
