//
//  PlantCardView.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct PlantCardView: View {
    var plant: Plant
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "leaf.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.green)
                .background(Circle().fill(Color.green.opacity(0.15)))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(plant.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text("Last watered: \(plant.lastWateredDate, style: .date)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    PlantCardView(plant: Plant(name: "test", species: "Test", lastWateredDate: Date(), careInstructions: "Water test amount of water", growthStage: .mature))
}
