//
//  FrameworkDetail.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @State private var isShowingSarariView = false

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            VStack {
                Image(framework.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)

                Text(framework.name).font(.title)
            }

            Text(framework.description)
                .font(.body)
                .foregroundStyle(.secondary)

            Spacer()

            Button {
                isShowingSarariView.toggle()
            } label: {
                Text("Learn more")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
            }

        }.padding().sheet(isPresented: $isShowingSarariView) {
            SafariView(url: URL(string: framework.url)!)
        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.frameworks[0]
    )
}
