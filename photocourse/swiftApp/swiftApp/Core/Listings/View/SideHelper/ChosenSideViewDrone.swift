//
//  ChosenSideViewDrone.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 24.01.2024..
//

import SwiftUI

enum ImageSideDrone: String, CaseIterable {
    case fpv = "FPV"
    case cine = "Cine"
}

struct ChosenSideViewDrone: View {
    
    var selectedSide: ImageSideDrone
    
    var body: some View {
        switch selectedSide {
        case .fpv:
            SelectSideView(imageName: "fpv")
        case .cine:
            SelectSideView(imageName: "cine")
        }
    }
}

#Preview {
    ChosenSideViewDrone(selectedSide: .cine)
}
