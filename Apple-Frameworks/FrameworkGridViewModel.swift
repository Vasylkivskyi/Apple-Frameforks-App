//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Pavlo Vasylkivskyi on 05.08.2024.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    @Published var isShowingDetailsView: Bool = false
}
