//
//  Bootcamp33.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-25.
//

import SwiftUI

// Context menu
struct Bootcamp33: View {
    
    @State var backgroundColor = Color.gray
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        // Not used very much because the user cannot know it is there by just looking
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .blue
            }, label: {
                Label("Color 1", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Color 2")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Color 3")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct Bootcamp33_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp33()
    }
}
