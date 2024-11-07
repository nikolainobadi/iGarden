//
//  DashboardView.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    @State private var showReminders = false

    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Overview Section
                    OverviewSection(plantCount: viewModel.plants.count)
                    
                    // Plant List Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("My Plants")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        ForEach(viewModel.plants) { plant in
                            NavigationLink(destination: PlantDetailView(plant: plant)) {
                                PlantCardView(plant: plant)
                                    .padding(.horizontal)
                                    .padding(.vertical, 2)
                            }
                        }
                    }
                }
                .padding()
            }
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
            .navigationTitle("Dashboard")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showReminders.toggle()
                    }) {
                        ZStack {
                            Image(systemName: "bell.fill")
                                .font(.title2)
                                .foregroundColor(.blue)
                            
                            if !viewModel.reminders.isEmpty {
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 12, height: 12)
                                    .offset(x: 10, y: -10)
                            }
                        }
                    }
                    .sheet(isPresented: $showReminders) {
                        ReminderListView(reminders: $viewModel.reminders)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: viewModel.addNewPlant) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}


#Preview {
    DashboardView()
}
