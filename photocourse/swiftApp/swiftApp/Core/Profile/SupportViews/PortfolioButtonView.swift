//
//  PortfolioButtonView.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 24.01.2024..
//

import SwiftUI

struct PortfolioButtonView: View {
    var body: some View {
        
        ZStack {
            HStack {
                Spacer()
                Link(destination: URL(string: "https://lkphoto.studio")!, label: {
                    Text("Check my Portfolio")
                        .bold()
                        .font(.footnote)
                        .frame(width: 145, height: 45)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                Spacer()
            }
        }
    }
}

#Preview {
    PortfolioButtonView()
}
