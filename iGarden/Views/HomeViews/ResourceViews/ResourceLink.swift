//
//  ResourceLink.swift
//  iGarden
//
//  Created by Israel on 11/5/24.
//

import SwiftUI

struct ResourceLink: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 8)
        .onTapGesture {
            // Open a link or perform an action
            print("Tapped on \(title)")
        }
    }
}

//#Preview {
//    ResourceLink()
//}
