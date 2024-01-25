//
//  ListingDetailView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var selectedSide: ImageSide = .low
    @State private var selectedSideDrone: ImageSideDrone = .fpv
    @State private var selectedSideGimbal: ImageSideGimbal = .axis3
    @State private var selectedSideLightroom: ImageSideLightroom = .cl
    @State private var selectedSideRule: ImageSideRule = .ruleDone
    
    let course: Course
    
    var body: some View {
        
        ScrollView {
            ZStack(alignment: .topLeading) {
                Image(course.imageUrl)
                    .resizable()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(course.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                    }
                    .foregroundStyle(.black)
                    .padding(.bottom, 0.5)
                    
                    Text("Difficulty: \(course.difficulty)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Divider()
            
            //author
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Tutorial written by: \(course.authorName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("\(course.experience)years experience -")
                        Text("\(course.numOfShootings)shoots")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image(course.authorImageUrl)
                    .resizable()
                    .frame(width: 64, height: 64)
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //traits
            VStack(alignment: .leading, spacing: 16) {
                Text("Traits:")
                    .font(.body)
                    .fontWeight(.bold)
                
                ForEach(course.usage) { trait in
                    HStack(spacing: 12) {
                        Image(systemName: trait.imageName)
                        
                        VStack(alignment: .leading) {
                            Text(trait.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                    }
                }
            }
            .padding(.horizontal, -180)
            
            Divider()
            
            
            //explanation
            VStack(alignment: .leading, spacing: 16) {
                Text("Explanation")
                    .font(.body)
                    .fontWeight(.bold)
                
                Text(course.description)
                .font(.footnote)
                        
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                
                if(course.title == "Drone Flying") {
                    Text("Real world example:")
                        .font(.headline)
                    
                    Picker("Choose drone type", selection: $selectedSideDrone) {
                        ForEach(ImageSideDrone.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 50)

                    Spacer()
                    ChosenSideViewDrone(selectedSide: selectedSideDrone)
                    Spacer()
                }
                else if(course.title == "ISO Sensitivity") {
                    Text("Real world example:")
                        .font(.headline)
                    
                    Picker("Choose ISO", selection: $selectedSide) {
                        ForEach(ImageSide.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 50)

                    Spacer()
                    ChosenSideView(selectedSide: selectedSide)
                    Spacer()
                }
                else if(course.title == "Gimbal Usage") {
                    Text("Real world example:")
                        .font(.headline)
                    
                    Picker("Choose gimbal type", selection: $selectedSideGimbal) {
                        ForEach(ImageSideGimbal.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 50)

                    Spacer()
                    ChosenSideViewGimbal(selectedSide: selectedSideGimbal)
                    Spacer()
                }
                else if(course.title == "Lightroom Editing") {
                    Text("Real world example:")
                        .font(.headline)
                    
                    Picker("Choose Lightrom version", selection: $selectedSideLightroom) {
                        ForEach(ImageSideLightroom.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 50)

                    Spacer()
                    ChosenSideViewLightroom(selectedSide: selectedSideLightroom)
                    Spacer()
                }
                else {
                    Text("Real world example:")
                        .font(.headline)
                    
                    Picker("Follow the rule or not?", selection: $selectedSideRule) {
                        ForEach(ImageSideRule.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 50)

                    Spacer()
                    ChosenSideViewRule(selectedSide: selectedSideRule)
                    Spacer()
                }
            }
            .padding()
            .padding(.bottom, 60)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ListingDetailView(course: DeveloperPreview.shared.course[0])
}
