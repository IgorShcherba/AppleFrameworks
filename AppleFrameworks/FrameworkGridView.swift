//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Igor Shcherba on 20/07/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                print("dcsd")
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple frameworks")
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
