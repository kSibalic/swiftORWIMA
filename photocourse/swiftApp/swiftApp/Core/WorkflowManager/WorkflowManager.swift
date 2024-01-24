//
//  WorkflowManager.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 23.01.2024..
//

import Foundation
import SwiftData

@Model
final class WorkflowManager {
    var title: String
    var timestamp: Date
    var isCritical: Bool
    var isCompleted: Bool
    
    init(title: String = "",
         timestamp: Date = .now,
         isCritical: Bool = false,
         isCompleted: Bool = false) {
        self.title = title
        self.timestamp = timestamp
        self.isCritical = isCritical
        self.isCompleted = isCompleted
    }
}
