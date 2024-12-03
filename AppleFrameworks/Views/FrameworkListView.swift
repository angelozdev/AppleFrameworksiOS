//
//  FrameworkListView.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 1/12/24.
//

import SwiftUI

struct FrameworkListView: View {
    let frameworks: [Framework]
    let onFrameworkSelected: (Framework) -> Void

    var body: some View {
        List(frameworks) { framework in
            FrameworkRowView(framework: framework)
                .onTapGesture {
                    onFrameworkSelected(framework)
                }
        }.listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    FrameworkListView(
        frameworks: MockData.frameworks,
        onFrameworkSelected: { print($0.name) }
    )
}
