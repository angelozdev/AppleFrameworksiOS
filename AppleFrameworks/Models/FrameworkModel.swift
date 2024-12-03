//
//  FrameworkModel.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import Foundation

struct Framework: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    let url: String
    let description: String
}
