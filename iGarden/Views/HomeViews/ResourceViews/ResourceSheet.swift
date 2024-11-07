//
//  ResourceSheet.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct ResourceSheet: View {
    var plant: Plant
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Resources for \(plant.name)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                ResourceLink(title: "Growing Conditions", description: "Best light, temperature, and humidity for \(plant.name).")
                ResourceLink(title: "Common Pests", description: "Common bugs and how to handle them.")
                ResourceLink(title: "Propagation Tips", description: "Easy steps to grow new \(plant.name) plants.")
                ResourceLink(title: "More Information", description: "Find more details about \(plant.name) care.")
                
                Spacer()
            }
            .padding()
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
            //.navigationTitle("Resources")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        // Dismiss the sheet
                    }
                }
            }
        }
    }
}

//#Preview {
//    ResourceSheet()
//}
