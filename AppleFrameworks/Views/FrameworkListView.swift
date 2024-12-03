//
//  FrameworkListView.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 1/12/24.
//

import SwiftUI

struct FrameworkListView: View {
    let frameworks: [Framework]

    var body: some View {
        List(frameworks) { framework in
            NavigationLink(value: framework) {
                FrameworkRowView(framework: framework)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("🍎 Apple Frameworks")
    }
}

#Preview {
    NavigationStack {
        FrameworkListView(
            frameworks: MockData.frameworks
        )
    }
}
