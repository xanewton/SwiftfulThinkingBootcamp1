//
//  Bootcamp42.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// TabView
struct Bootcamp42: View {
    var body: some View {
        TabView1()
        //TabView2()
    }
}

struct TabView1: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Browse tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("Profile tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea(.all)
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: { selectedTab = 2 }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}


struct TabView2: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = [ "heart.fill", "globe", "house.fill", "person.fill" ]
    
    var body: some View {
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.orange]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}


struct Bootcamp42_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp42()
    }
}
