//
//  ListingImageCarouselView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "gimbal",
        "iso",
        "drone",
        "lightroom",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
