//
//  MainTabView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "camera")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            
            WorkflowManagerView()
                .tabItem {
                    Label("Manager", systemImage: "list.clipboard.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Author", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
