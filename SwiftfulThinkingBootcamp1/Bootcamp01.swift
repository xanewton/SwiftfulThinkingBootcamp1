//
//  Bootcamp01.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-04-27.
//

import SwiftUI

// Text review
struct Bootcamp01: View {
    var body: some View {
        Text("Hello World! THis is the Swift Bootcamp. I am really enjoying this course and learning a lot! Dude!".uppercased())
            .bold()
            //.underline(true, color: Color.red)
            //.italic()
            //.strikethrough()
            //.baselineOffset(10.0)
            //.kerning(5)
            .multilineTextAlignment(.leading)
            .foregroundColor(.purple)
    }
}

struct Bootcamp01_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp01()
    }
}
