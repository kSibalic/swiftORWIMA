//
//  UpdateWorkflow.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 23.01.2024..
//

import SwiftUI

struct UpdateWorkflow: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Bindable var item: WorkflowManager
    
    var body: some View {
        List {
            TextField("Title", text: $item.title)
            
            DatePicker("Choose deadline", selection: $item.timestamp)
            
            Toggle("Priority", isOn: $item.isCritical)
            
            Button("Update") {
                dismiss()
            }
        }
        .navigationTitle("Update your workflow")
    }
}
