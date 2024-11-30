//
//  FrameworkDetail.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool

    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                        .foregroundColor(.gray)
                }
            }

            Spacer()

            VStack {
                Image(framework.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)

                Text(framework.name).font(.title)
            }

            Text(framework.description).font(.body).foregroundStyle(.secondary)

            Spacer()

            Button {
            } label: {
                Text("Read More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                    .background(.brown)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }

        }.padding()
    }
}

#Preview {
    @Previewable @State var isShowing: Bool = true
    FrameworkDetailView(framework: MockData.frameworks[0], isShowingDetailView: $isShowing)
}
