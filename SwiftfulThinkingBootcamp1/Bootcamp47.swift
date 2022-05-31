//
//  Bootcamp47.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-29.
//

import SwiftUI

// Tap Gesture
struct Bootcamp47: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
                /*.onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })*/
            
            Spacer()
        }
    }
}

struct Bootcamp47_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp47()
    }
}
