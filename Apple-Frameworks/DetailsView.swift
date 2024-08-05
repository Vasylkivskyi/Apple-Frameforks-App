//
//  Details.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 05.08.2024.
//

import SwiftUI

struct DetailsView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
        }.padding()
        Spacer()
        FrameworkTitleView(framework: framework)
        Text(framework.description)
            .font(.body)
            .padding()
        Spacer()
        UIButton(text: "Learn More") {
            print("hello")
        }
        Spacer()
    }
}

#Preview {
    DetailsView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
}
