//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 21/07/2024.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn more")
}
