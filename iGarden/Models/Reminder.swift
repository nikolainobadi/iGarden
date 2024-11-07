//
//  Reminder.swift
//  iGarden
//
//  Created by Israel on 11/6/24.
//

import Foundation

struct Reminder: Identifiable {
    var id = UUID()
    var plantName: String
    var task: String
    var dueDate: Date
}
