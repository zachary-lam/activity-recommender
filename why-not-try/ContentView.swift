//
//  ContentView.swift
//  why-not-try
//
//  Created by Zachary Lâm on 2025-12-05.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    @State private var selectedActivity = "Archery" // hardcoded default
    
    
    var body: some View {
        VStack{
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack {
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selectedActivity.lowercased())")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                
                Text(selectedActivity)
                    .font(.title)
            }
            
            Button("New Activity") {
                selectedActivity = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
