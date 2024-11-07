//
//  DashboardViewModel.swift
//  iGarden
//
//  Created by Israel on 11/6/24.
//

import SwiftUI

class DashboardViewModel: ObservableObject {
    @Published var plants: [Plant]
    @Published var reminders: [Reminder]

    init() {
        // Sample data for now, replace with SwiftData query in the future
        self.plants = [
            Plant(name: "Succulent", species: "Echeveria", lastWateredDate: Date(), careInstructions: "Water sparingly, once a month.", growthStage: .mature),
            Plant(name: "Sunflower", species: "Helianthus", lastWateredDate: Date(), careInstructions: "Water daily; requires full sunlight.", growthStage: .young),
            Plant(name: "Snake Plant", species: "Sansevieria", lastWateredDate: Date(), careInstructions: "Water bi-weekly.", growthStage: .mature),
            Plant(name: "New Rose", species: "Rose", lastWateredDate: Date(), careInstructions: "Water every few days; keep in indirect sunlight.", growthStage: .seedling)
        ]
        
        self.reminders = [
            Reminder(plantName: "Sunflower", task: "Watering", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!)
        ]
    }

    func addNewPlant() {
        // Logic to add a new plant, replace with SwiftData insertion later
        let newPlant = Plant(name: "New Plant", species: "Unknown Species", lastWateredDate: Date(), careInstructions: "Water as needed.", growthStage: .seedling)
        plants.append(newPlant)
    }
}
