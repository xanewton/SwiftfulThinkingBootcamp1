//
//  Bootcamp11.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-07.
//

import SwiftUI

// Spacer
struct Bootcamp11: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()  // Takes all space possible, but by default has a minimum
            
            Rectangle()
                .frame(height: 50)
        }
    }
}

struct Bootcamp11_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp11()
    }
}
