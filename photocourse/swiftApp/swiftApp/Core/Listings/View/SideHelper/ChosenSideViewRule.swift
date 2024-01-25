//
//  ChosenSideViewRule.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 25.01.2024..
//

import SwiftUI

enum ImageSideRule: String, CaseIterable {
    case ruleDone = "Following"
    case ruleBroken = "Breaking"
}

struct ChosenSideViewRule: View {
    
    var selectedSide: ImageSideRule
    
    var body: some View {
        switch selectedSide {
        case .ruleDone:
            SelectSideView(imageName: "ruleDone")
        case .ruleBroken:
            SelectSideView(imageName: "ruleBroken")
        }
    }
}

#Preview {
    ChosenSideViewRule(selectedSide: .ruleDone)
}
