//
//  Bootcamp06.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-03.
//

import SwiftUI

// Images
struct Bootcamp06: View {
    var body: some View {
        Image("tractor") //"terminator"
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            //.foregroundColor(.green)
            //.clipped()
            //.cornerRadius(150)
            .clipShape(
                //Circle()
                //Ellipse()
                RoundedRectangle(cornerRadius: 25.0)
            )
    }
}

struct Bootcamp06_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp06()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
