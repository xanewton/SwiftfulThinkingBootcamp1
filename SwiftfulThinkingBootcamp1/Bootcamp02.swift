//
//  Bootcamp02.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-04-28.
//

import SwiftUI

// Shapes
struct Bootcamp02: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke(Color.red)
            //.stroke(Color.orange, lineWidth: 30)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.4, to: 1.0)
            .frame(width: 300, height: 200)
    }
}

struct Bootcamp02_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp02()
    }
}
