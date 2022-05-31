//
//  Bootcamp20.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-10.
//

import SwiftUI

// Extracting subviews
struct Bootcamp20: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyView(title: "Apples", count: 10, color: .red)
            MyView(title: "Oranges", count: 200, color: .orange)
            MyView(title: "Bananas", count: 500, color: .yellow)
        }
    }
}

struct Bootcamp20_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp20()
    }
}

struct MyView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
    }
}
