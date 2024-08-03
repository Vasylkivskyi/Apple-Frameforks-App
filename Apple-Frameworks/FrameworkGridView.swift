//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 02.08.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { fr in
                        FrameworkTitleView(framework: fr)
                    }
                }
            }.navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}
