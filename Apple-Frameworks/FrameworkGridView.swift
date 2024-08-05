//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 02.08.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = Array(
        repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { fr in
                        FrameworkTitleView(framework: fr)
                            .onTapGesture {
                                viewModel.selectedFramework = fr
                            }
                    }
                }
            }.navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailsView, content: {
                    DetailsView(framework: viewModel.selectedFramework ?? MockData.frameworks[0], isShowingDetailView: $viewModel.isShowingDetailsView)
                })
        }
    }
}

#Preview {
    FrameworkGridView()
}
