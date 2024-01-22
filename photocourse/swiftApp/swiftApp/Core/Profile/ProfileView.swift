//
//  ProfileView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    
                    HeaderView()
                        .padding(.top, 24)
                    
                    SkillsCollapse(skills: Author().skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 24)
                    
                    ExperiencesView(experiences: Author().experiences)
                        .padding(.top, 32)
                }
                .padding(24)
            }
        }
    }
}

#Preview {
    ProfileView()
}
