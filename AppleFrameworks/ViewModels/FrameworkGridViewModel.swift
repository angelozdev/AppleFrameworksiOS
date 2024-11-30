//
//  FrameworkGrid.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 27/11/24.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    @Published var selectedFramework: Framework? = nil

    var isShowingDetailView: Bool {
        selectedFramework != nil
    }

    func closeDetailView() {
        selectedFramework = nil
    }
}
