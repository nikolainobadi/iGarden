//
//  OverviewSection.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct OverviewSection: View {
    var plantCount: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hello, Gardener!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("Total Plants: \(plantCount)")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.8), Color.blue.opacity(0.8)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .cornerRadius(15)
                .shadow(radius: 5)
        )
    }
}

#Preview {
    OverviewSection(plantCount: 3)
}
