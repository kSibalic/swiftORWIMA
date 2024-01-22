//
//  HeaderView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 15.01.2024..
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("profilePhoto")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.7)
                            .shadow(radius: 5)
                            .foregroundColor(Color.orange)
                            
                )
                Spacer()
            }
            
            Text("Karlo Šibalić")
                .font(.headline)
                .padding(.top, 8)
                .fontWeight(.bold)
            
            Text("Photographer & Videographer")
                .font(.caption)
                .padding(.top, -5)
                .opacity(0.85)
                .italic()
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                
                Text("Nijemci")
                    .font(.subheadline)
                
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(
                "I'm a rising force in visual storytelling, blending creativity and technical prowess to craft compelling narratives through both stills and videos. With an unbridled passion for capturing moments, their work promises a vivid and authentic portrayal that captivates and inspires."
            )
                .font(.footnote)
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12)
                .frame(maxWidth: 320)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    HeaderView()
        .padding(24)
}
