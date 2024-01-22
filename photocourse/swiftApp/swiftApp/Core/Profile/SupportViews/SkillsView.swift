//
//  SkillsView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 15.01.2024..
//

import SwiftUI

struct SkillsView: View {
    
    var skill: Skill
    var width: CGFloat = 120
    
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
                .foregroundColor(.white)
            
            Text(skill.skillName)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.top, 10)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: width)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.65)
                .foregroundColor(Color.black)
        )
    }
}

#Preview {
    SkillsView(skill: Author().skills[0])
}
