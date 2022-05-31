//
//  Bootcamp41.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// Slider
struct Bootcamp41: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text( // "\(sliderValue)"
                  String(format: "%.2f", sliderValue))
            .foregroundColor(color)
            
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {(_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.title)
                    .foregroundColor(.purple)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Label")
                }
            )
            .accentColor(.red)
        }
    }
}

struct Bootcamp41_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp41()
    }
}
