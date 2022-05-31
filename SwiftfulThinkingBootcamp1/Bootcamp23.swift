//
//  Bootcamp23.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-21.
//

import SwiftUI

// Ternary Operators
struct Bootcamp23: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!" : "Ending State!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            Spacer()
        }
    }
}

struct Bootcamp23_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp23()
    }
}
