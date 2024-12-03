//
//  FrameworksGridView.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 1/12/24.
//

import SwiftUI

struct FrameworksGridView: View {
    private let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    let frameworks: [Framework]
    let onFrameworkSelected: (Framework) -> Void

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 12) {
                ForEach(frameworks, id: \.id) { framework in FrameworkCardView(framework: framework)
                    .onTapGesture {
                        onFrameworkSelected(framework)
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    FrameworksGridView(
        frameworks: MockData.frameworks,
        onFrameworkSelected: { print($0.name) }
    )
}
