//
//  ListingView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 14.01.2024..
//

import SwiftUI

struct ListingView: View {
    let course:  Course
    
    var body: some View {
        VStack(spacing: 8) {
            //images
            
            //ListingImageCarouselView()
            //   .frame(height: 320)
            //  .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Image("\(course.imageUrl)")
                .resizable()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //details
            HStack(alignment: .top) {
                //description
                VStack(alignment: .leading) {
                    Text("\(course.title)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    
                    Text("Difficulty: \(course.difficulty)")
                        .foregroundStyle(.gray)
                    
                    Text("Author: \(course.authorName)")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingView(course: DeveloperPreview.shared.course[0])
}
