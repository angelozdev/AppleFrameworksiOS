//
//  FrameworkCard.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import SwiftUI

struct FrameworkCardView: View {
    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)

            Text(framework.name)
                .font(.headline)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
        
    }
}

#Preview {
    FrameworkCardView(framework: Framework(name: "App Store", imageName: "coreml", url: "https://www.apple.com", description: "The App Store is a digital distribution platform, developed and maintained by Apple Inc., for mobile apps on its iOS and iPadOS operating systems."))
}
