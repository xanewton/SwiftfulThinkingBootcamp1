//
//  Bootcamp58.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// Badges on iOS15 for ListView and TabView
struct Bootcamp58: View {
    var body: some View {
        //tabsView
        listView
    }
    
    var listView: some View {
        List {
            Text("Trucks")
            Text("School bus")
                .badge("New items!")
            Text("Airplane")
            Text("Cars")
        }
    }
    
    var tabsView: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Main")
                }
                .badge(2)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Settings")
                }
                .badge("New")
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("List")
                }
                .badge(0)
        }
    }
}

struct Bootcamp58_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp58()
    }
}
