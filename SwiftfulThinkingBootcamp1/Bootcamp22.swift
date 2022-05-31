//
//  Bootcamp22.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-18.
//

import SwiftUI

// If-else and conditional statements
struct Bootcamp22: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            } else {
                // Other logic
            }
            
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

struct Bootcamp22_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp22()
    }
}
