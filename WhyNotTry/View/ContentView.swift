//
//  ContentView.swift
//  WhyNotTry
//
//  Created by daniel_bp on 3/5/24.
//

import SwiftUI

struct ContentView: View {
   
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    
    @State var selected = "Baseball"
    @State private var id = 1
    
    
    var body: some View {
        VStack{
            Text("Why not try…")
                   .font(.largeTitle.bold())
            Spacer()
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay {
                        Image(systemName: "figure.\(selected.lowercased())")
                            .foregroundStyle(.white)
                            .font(.system(size: 200))
                    }
                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.opacity)
            .id(id)
   
            Spacer()
            	
            Button("Try again") {
                withAnimation(.bouncy(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
               
            }
            .buttonStyle(.bordered)
            .foregroundStyle(.purple.opacity(0.5))
            .font(.title2)
            .padding(.bottom, 40)
            
        }
      
    }
}

#Preview {
    ContentView()
}
