//
//  WorkflowView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 23.01.2024..
//

import SwiftUI

struct WorkflowView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    
    @State private var item = WorkflowManager()
    
    var body: some View {
        List {
            TextField("Title", text: $item.title)
            
            DatePicker("Choose deadline", selection: $item.timestamp)
            
            Toggle("Priority?", isOn: $item.isCritical)
            
            Button("Add") {
                withAnimation {
                    context.insert(item)
                }
                dismiss()
            }
        }
        .navigationTitle("Never forget your projects")
    }
}

#Preview {
    WorkflowView()
        .modelContainer(for: WorkflowManager.self)
}
