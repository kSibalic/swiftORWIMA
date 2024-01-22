//
//  SkillsCollapse.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 15.01.2024..
//

import SwiftUI

struct SkillsCollapse: View {
    
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .foregroundColor(.orange)
                        .fontWeight(.medium)
                        .font(.title2)
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }
            }
            
            if(showSkills) {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillsView(skill: skill, width: width / 3 - 5)
                    }
                }
                .padding(.top, 15)
            }
        }
    }
}

#Preview {
    GeometryReader { proxy in
        SkillsCollapse(skills: Author().skills, width: 400)
            .padding(24)
    }
}
