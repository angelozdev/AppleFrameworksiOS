//
//  FrameworkGrid.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 27/11/24.
//

import Foundation

final class FrameworksViewModel: ObservableObject {
    @Published var selectedFramework: Framework? = nil

    var isShowingDetailView: Bool {
        selectedFramework != nil
    }

    func closeDetailView() {
        selectedFramework = nil
    }
}

enum FrameworkDisplayMode {
    case list, grid
}
