//
//  Bootcamp07.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-04.
//

import SwiftUI

// Frames
struct Bootcamp07: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct Bootcamp07_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp07()
    }
}
