//
//  Plant.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import Foundation

struct Plant: Identifiable, Equatable{
    var id = UUID()
    var name: String
    var species: String
    var lastWateredDate: Date
    var careInstructions: String
    var growthStage: GrowthStage //This is a going to help with group plants into differnet ages of life
    
    enum GrowthStage: String, CaseIterable {
        case seedling = "Seedlings"
        case young = "Young Plants"
        case mature = "Mature Plants"
    }
}
