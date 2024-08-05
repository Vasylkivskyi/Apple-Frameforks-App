//
//  UIButtonView.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 05.08.2024.
//

import SwiftUI

struct UIButton: View {
    let text: String
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(width: 280, height: 50)
                .background(Color.orange)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(7)
        }
    }
}

struct UIButton_Previews: PreviewProvider {
    static var previews: some View {
        UIButton(text: "Hello") {
            print("Button pressed")
        }
    }
}
