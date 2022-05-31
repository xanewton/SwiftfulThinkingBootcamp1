//
//  Bootcamp12.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-08.
//

import SwiftUI

// Initializer
struct Bootcamp12: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack{
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text("\(count)")
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Bootcamp12_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Bootcamp12(count: 100, fruit: .orange)
            Bootcamp12(count: 50, fruit: .apple)
        }
    }
}
