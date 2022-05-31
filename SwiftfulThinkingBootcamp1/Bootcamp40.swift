//
//  Bootcamp40.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

//Stepper
struct Bootcamp40: View {
    
    @State var stepperValue: Int = 0
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper 1: \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2: \(widthIncrement)",
                    onIncrement: { incrementWidth(amount: 10) },
                    onDecrement: { incrementWidth(amount: -10)})
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct Bootcamp40_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp40()
    }
}
