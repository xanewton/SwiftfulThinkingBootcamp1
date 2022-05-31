//
//  Bootcamp03.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-04-28.
//

import SwiftUI

//Colors
struct Bootcamp03: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.pink
                //Color.primary
                //Color(#colorLiteral(red:0, green:0.3285208941, blue: 1, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: 20)
    }
}

struct Bootcamp03_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp03()
            
            
            
    }
}
