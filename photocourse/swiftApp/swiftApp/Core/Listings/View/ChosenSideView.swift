//
//  ChosenSideView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import SwiftUI

enum ImageSide: String, CaseIterable {
    case low = "Low"
    case high = "High"
    case fpv = "FPV"
    case cine = "Cine"
}

struct ChosenSideView: View {
    
    var selectedSide: ImageSide
    
    var body: some View {
        switch selectedSide {
        case .low:
            SelectSideView(imageName: "iso100")
        case .high:
            SelectSideView(imageName: "iso6400")
        case .fpv:
            SelectSideView(imageName: "fpv")
        case .cine:
            SelectSideView(imageName: "cine")
        }
    }
}

#Preview {
    ChosenSideView(selectedSide: .low)
}
