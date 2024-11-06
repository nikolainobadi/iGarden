//
//  MainTabView.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            JournalView()
                .tabItem {
                    Label("Journal", systemImage: "book")
                }
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }
            PlantIndeifcationView()
                .tabItem {
                    Label("Identify", systemImage: "leaf")
                }
            ReminderSettingsView()
                .tabItem {
                    Label("Reminders", systemImage: "bell")
                }
        }
    }
}

#Preview {
    MainTabView()
}
