//
//  ContentView.swift
//  activity-recommender
//
//  Created by Zachary Lâm on 2025-12-05.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selectedActivity = "Archery" // hardcoded default
    
    @State private var id = 1
    
    var body: some View {
        VStack{
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selectedActivity.lowercased())")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                
                Text(selectedActivity)
                    .font(.title)
            }.transition(.slide)
                .id(id)
            
            Spacer()
            
            Button("New Activity") {
                withAnimation(.easeInOut(duration: 1)) {
                    selectedActivity = activities.randomElement() ?? "Archery"
                    id += 1
                }

            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
