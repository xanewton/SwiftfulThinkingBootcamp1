//
//  Bootcamp14.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-08.
//

import SwiftUI

// ScrollView and LazyVStack
struct Bootcamp14: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<50) { index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        LazyHStack { // Lazy only creates for what is visible and add as needed
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

struct Bootcamp14_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp14()
    }
}
