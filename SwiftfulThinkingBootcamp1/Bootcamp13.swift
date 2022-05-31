//
//  Bootcamp13.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-08.
//

import SwiftUI

// ForEach
struct Bootcamp13: View {
    
    let data: [String] = ["Hi", "Hello", "Hey there", "Slap"]
    let myString: String = "Dude"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            /*ForEach(0..<18) { index in
                Circle()
                 .frame(width: 25, height: 25)
            }*/
        }
    }
}

struct Bootcamp13_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp13()
    }
}
