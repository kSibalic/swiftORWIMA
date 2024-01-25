//
//  ChosenSideViewLightroom.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 25.01.2024..
//

import SwiftUI

enum ImageSideLightroom: String, CaseIterable {
    case cl = "Lightroom Classic"
    case cc = "Lightroom CC"
}

struct ChosenSideViewLightroom: View {
    
    var selectedSide: ImageSideLightroom
    
    var body: some View {
        switch selectedSide {
        case .cl:
            SelectSideView(imageName: "lrCL")
        case .cc:
            SelectSideView(imageName: "lrCC")
        }
    }
}

#Preview {
    ChosenSideViewLightroom(selectedSide: .cl)
}
