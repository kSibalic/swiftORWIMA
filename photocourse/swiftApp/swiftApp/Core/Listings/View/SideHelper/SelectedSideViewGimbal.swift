//
//  SelectedSideViewGimbal.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 25.01.2024..
//

import SwiftUI

struct SelectedSideViewGimbal: View {
    
    var imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 257, height: 256)
            .cornerRadius(8)
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    SelectedSideViewGimbal(imageName: "3-axis")
}
