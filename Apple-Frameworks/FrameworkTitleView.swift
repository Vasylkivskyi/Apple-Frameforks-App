//
//  GridItem.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 02.08.2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.system(.title2))
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks[0])
}
