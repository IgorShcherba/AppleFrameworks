//
//  XDismissButtonView.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 21/07/2024.
//

import SwiftUI

struct XDismissButtonView: View {
    @Binding var isOpen: Bool

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isOpen.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
        }
    }
}

#Preview {
    XDismissButtonView(isOpen: .constant(false))
}
