//
//  PlantDetailView.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct PlantDetailView: View {
    var plant: Plant
    @State private var showResources = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                //This is a placeholder for a real image in the future
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.green.opacity(0.15))
                        .frame(height: 200)
                        .overlay(
                            Image(systemName: "leaf.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.green.opacity(0.7))
                        )
                    
                    Text(plant.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.top, 140)
                }
                .padding(.bottom, 20)

                // Plant Details Section
                VStack(alignment: .leading, spacing: 10) {
                    SectionHeader(title: "Species")
                    Text(plant.species)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Divider()
                    
                    SectionHeader(title: "Last Watered")
                    Text("\(plant.lastWateredDate, style: .date)")
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                    Divider()
                    
                    SectionHeader(title: "Care Instructions")
                    Text(plant.careInstructions)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .padding()
        }
        .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
        .navigationTitle("Plant Details")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    showResources.toggle()
                }) {
                    Image(systemName: "info.circle")
                        .font(.title2)
                        .foregroundColor(.blue)
                }
            }
        }
        .sheet(isPresented: $showResources) {
            ResourceSheet(plant: plant)
        }
    }
}

// Helper View for Section Headers
struct SectionHeader: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(.secondary)
    }
}

#Preview {
    PlantDetailView(plant: Plant(name: "Succulent", species: "Echeveria", lastWateredDate: Date(), careInstructions: "Water sparingly, once a month.", growthStage: .seedling))
}
