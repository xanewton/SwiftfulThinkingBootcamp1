//
//  Bootcamp43.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// Adapt for Dark Mode
struct Bootcamp43: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is GLOBALLY ADAPTIVE")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is LOCALLY ADAPTIVE")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct Bootcamp43_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Bootcamp43()
                .preferredColorScheme(.light)
            Bootcamp43()
                .preferredColorScheme(.dark)
        }
    }
}
