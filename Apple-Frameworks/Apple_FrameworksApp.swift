//
//  Apple_FrameworksApp.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 02.08.2024.
//

import SwiftUI

@main
struct Apple_FrameworksApp: App {
    var body: some Scene {
        WindowGroup {
            FrameworkGridView()
                .preferredColorScheme(.dark)
        }
    }
}
