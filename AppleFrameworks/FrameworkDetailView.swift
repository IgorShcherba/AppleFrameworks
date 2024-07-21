//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 21/07/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false

    var body: some View {
        XDismissButtonView(isOpen: $isShowingDetailView)
        Spacer()

        FrameworkTitleView(framework: framework)
        Text(framework.description)
            .font(.body)
            .padding()

        Spacer()

        Button {
            isShowingSafariView = true
            print("tapped")
        } label: {
            AFButton(title: "Learn more")
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false), isShowingSafariView: false)
}
