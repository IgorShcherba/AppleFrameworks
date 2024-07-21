//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 21/07/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]

    @Published var isShowingDetailView: Bool = false
}
