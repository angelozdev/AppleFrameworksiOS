//
//  FrameworkRowView.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 1/12/24.
//

import SwiftUI

struct FrameworkRowView: View {
    let framework: Framework

    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            Spacer()
        }.frame(maxWidth: .infinity, minHeight: 80)
    }
}

#Preview {
    VStack {
        FrameworkRowView(framework: MockData.frameworks[0])
        FrameworkRowView(framework: MockData.frameworks[1])
    }
}
