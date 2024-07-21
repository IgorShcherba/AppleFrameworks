//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 21/07/2024.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
