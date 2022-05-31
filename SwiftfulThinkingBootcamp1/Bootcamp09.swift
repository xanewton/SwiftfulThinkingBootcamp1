//
//  Bootcamp09.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-07.
//

import SwiftUI

// Stacks
struct Bootcamp09: View {
    // Vstack - Vertical
    // HStack - Horizontal
    // ZStack - front and back stack
    var body: some View {
        VStack() {
            Rectangle()
                .fill(Color.red)
                .frame(width: 25, height: 25)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 25, height: 25)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 25, height: 25)
        
            HStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 25, height: 25)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 25, height: 25)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 25, height: 25)
            }
            
            ZStack() {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 20, height: 20)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 10, height: 10)
            }
        }
    }
}

struct Bootcamp09_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp09()
    }
}
