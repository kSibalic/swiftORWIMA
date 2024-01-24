//
//  WorkflowManagerView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 23.01.2024..
//

import SwiftUI
import SwiftData


struct WorkflowManagerView: View {
    
    @Environment(\.modelContext) var context
    
    @State private var showCreate = false
    @State private var toEdit: WorkflowManager?
    
    @Query(
        filter: #Predicate { $0.isCompleted == false },
        sort: \WorkflowManager.timestamp,
        order: .forward
    ) private var items: [WorkflowManager]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            
                            if item.isCritical {
                                Image(systemName: "exclamationmark.3")
                                    .symbolVariant(.fill)
                                    .foregroundColor(.orange)
                                    .font(.largeTitle)
                                    .bold()
                            }
                            
                            Text(item.title)
                                .font(.largeTitle)
                                .bold()
                            
                            Text("\(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .shortened))")
                                .font(.callout)
                        }
                        
                        Spacer()
                        
                        Button {
                            withAnimation {
                                item.isCompleted.toggle()
                            }
                        } label: {
                            
                            Image(systemName: "checkmark")
                                .symbolVariant(.circle.fill)
                                .foregroundStyle(item.isCompleted ? .green : .gray)
                                .font(.largeTitle)
                        }
                        .buttonStyle(.plain)
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            withAnimation {
                                context.delete(item)
                            }
                        } label: {
                            Label("Delete", systemImage: "trash")
                                .symbolVariant(.fill)
                        }
                        
                        Button {
                            toEdit = item
                        } label: {
                            Label("Edit", systemImage: "pencil")
                        }
                        .tint(.orange)
                    }
                }
            }
            .navigationTitle("Workflow tasks")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showCreate.toggle()
                    }, label: {
                        Label("Add event", systemImage: "plus")
                    })
                }
            }
            .sheet(isPresented: $showCreate,
                    content: {
                NavigationStack {
                    WorkflowView()
                }
                .presentationDetents([.medium])
            })
            .sheet(item: $toEdit) {
                toEdit = nil
            } content: { item in
                UpdateWorkflow(item: item)
            }
        }
    }
}

#Preview {
    WorkflowManagerView()
}
