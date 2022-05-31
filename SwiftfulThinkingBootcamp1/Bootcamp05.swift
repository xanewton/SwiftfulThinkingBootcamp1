//
//  Bootcamp05.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-03.
//

import SwiftUI

// System icons
struct Bootcamp05: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.caption)
            //.font(.system(size: 200))
            //.foregroundColor(Color.pink)
            //.frame(width: 300, height: 200)
            //.clipped()
    }
}

struct Bootcamp05_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp05()
    }
}
