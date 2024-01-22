//
//  ListingImageCarouselView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listing-3",
        "listing-2",
        "listing-1",
        "listing-4",
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
