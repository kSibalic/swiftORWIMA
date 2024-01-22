//
//  ExperiencesView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .foregroundColor(.orange)
                        .fontWeight(.medium)
                        .font(.title2)
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }
            }
            .padding(.bottom, 14)
            
            if(showExperiences) {
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }
            }
        }
    }
}

#Preview {
    GeometryReader { proxy in
        ExperiencesView(experiences: Author().experiences)
            .padding(24)
    }
}
