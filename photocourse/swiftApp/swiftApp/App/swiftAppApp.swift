//
//  swiftAppApp.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 13.01.2024..
//

import SwiftUI
import SwiftData

@main
struct swiftAppApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .modelContainer(for: WorkflowManager.self)
        }
    }
}
