//
//  Bootcamp54.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// System Materials and Backgrounds in iOS15
struct Bootcamp54: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                //.ultraThinMaterial
                .thinMaterial
                //.thickMaterial
                //.regularMaterial
                //.ultraThickMaterial
            )
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("terminator")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct Bootcamp54_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp54()
    }
}
