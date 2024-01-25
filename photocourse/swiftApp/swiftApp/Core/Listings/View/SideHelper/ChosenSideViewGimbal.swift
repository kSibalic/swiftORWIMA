//
//  ChosenSideViewGimbal.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 25.01.2024..
//

import SwiftUI

enum ImageSideGimbal: String, CaseIterable {
    case axis3 = "3-axis"
    case axis4 = "4-axis"
}

struct ChosenSideViewGimbal: View {
    
    var selectedSide: ImageSideGimbal
    
    var body: some View {
        switch selectedSide {
        case .axis3:
            SelectSideView(imageName: "3-axis")
        case .axis4:
            SelectSideView(imageName: "4-axis")
        }
    }
}

#Preview {
    ChosenSideViewGimbal(selectedSide: .axis3)
}
