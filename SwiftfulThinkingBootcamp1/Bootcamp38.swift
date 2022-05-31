//
//  Bootcamp38.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// ColorPicker
struct Bootcamp38: View {
    
    @State var color: Color = .red
    
    var body: some View {
        ZStack {
            color.edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Select color",
                selection: $color,
                supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(30)
        }
    }
}

struct Bootcamp38_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp38()
    }
}
