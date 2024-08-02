//
//  GridItem.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 02.08.2024.
//

import SwiftUI

struct GridItem: View {
    let text: String
    let icon: String
    
    var body: some View {
        VStack {
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Text(text)
                .font(.system(size: 20))
                .frame(width: 120, alignment: .center)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    GridItem(text: "Hello world", icon: "app-clip")
}
