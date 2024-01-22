//
//  ExperienceView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import SwiftUI

struct ExperienceView: View {
    
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    
                    Text(experience.companyName)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(experience.role)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .opacity(0.8)
                        .padding(.top, 4)
                    
                    Text(experience.duration)
                        .font(.footnote)
                        .italic()
                        .opacity(0.5)
                        .padding(.top, 14)
                }
                .padding(.leading, 16)
            }
            .padding(.top, 8)
        }
        .fixedSize()
    }
}

#Preview {
    GeometryReader { proxy in
        ExperienceView(experience: Author().experiences[0])
            .padding(24)
    }
}
