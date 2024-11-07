//
//  ReminderListView.swift
//  iGarden
//
//  Created by Israel on 11/6/24.
//

import SwiftUI


struct ReminderListView: View {
    @Binding var reminders: [Reminder]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(reminders) { reminder in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(reminder.plantName)
                                .font(.headline)
                            Text(reminder.task)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text("Due: \(reminder.dueDate, style: .date)")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Button(action: {
                            markAsDone(reminder: reminder)
                        }) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Reminders")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        
                    }
                }
            }
        }
    }
    
    // Function to mark reminder as done
    private func markAsDone(reminder: Reminder) {
        if let index = reminders.firstIndex(where: { $0.id == reminder.id }) {
            reminders.remove(at: index)
        }
    }
}

