//
//  SearchView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

enum SearchViewOptions {
    case course
    case category
    case level
}

struct SearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOption: SearchViewOptions = .course
    @State private var selectedCategory = "Select"
    @State private var numLevel = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateCoursesSearch()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.orange)
                }
                
                Spacer()
                
                if !viewModel.searchCourse.isEmpty {
                    Button("Clear") {
                        viewModel.searchCourse = ""
                        viewModel.updateCoursesSearch()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .course {
                    Text("Explore your interests")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search course", text: $viewModel.searchCourse)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateCoursesSearch()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                else {
                    CollapsedPickerView(title: "Search our course", description: "Learn")
                }
            }
            .modifier(CollapsibleViewModifier())
            .frame(height: selectedOption == .course ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .course
                }
            }
            
            //interest selection view
            VStack(alignment: .leading) {
                if selectedOption == .category {
                    Text("What is your interest?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        Text("Selected category: \(selectedCategory)")
                        
                        Picker("Food Category",
                               selection: $selectedCategory) {
                            Text("Photography")
                                .tag("Photography")
                            Text("Videography")
                                .tag("Videography")
                            Text("Drone")
                                .tag("Drone")
                            }
                        }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                else {
                    CollapsedPickerView(title: "Pick your interest", description: "Category")
                }
            }
            .modifier(CollapsibleViewModifier())
            .frame(height: selectedOption == .category ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .category
                }
            }
            
            //level selections view
            VStack(alignment: .leading) {
                if selectedOption == .level {
                    Text("What's your knowledge level?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("Level: \(numLevel)")
                    } onIncrement: {
                        guard numLevel < 5 else { return }
                        numLevel += 1
                    } onDecrement: {
                        guard numLevel > 0 else { return }
                        numLevel -= 1
                    }
                }
                else {
                    CollapsedPickerView(title: "Your knowledge level", description: "Select")
                }
            }
            .modifier(CollapsibleViewModifier())
            .frame(height: selectedOption == .level ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .level
                }
            }
            Spacer()
        }
    }
}

#Preview {
    SearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreCourse()))
}

struct CollapsibleViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
